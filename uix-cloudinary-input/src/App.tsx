import React, { useLayoutEffect, useState, useEffect } from 'react';
import { Image, Video, Placeholder } from 'cloudinary-react';
import { Route, Switch, BrowserRouter } from 'react-router-dom';
import {
  Wrapper as ExtensionWrapper,
  useUiExtensionDialog,
  useFieldExtension,
  FieldExtensionType,
  FieldExtensionFeature,
  FieldExtensionDeclaration,
  ExtensionType,
  ConfigType,
} from '@graphcms/uix-react-sdk';

type Media = {
  public_id: string;
  resource_type: string;
};

function isMediaType(item: any): item is Media {
  return Boolean(item) && 'public_id' in item && 'resource_type' in item;
}
function isMediaList(media: Media | Media[] | string): media is Media[] {
  return (
    Array.isArray(media) &&
    media.length > 0 &&
    media.every((item) => isMediaType(item))
  );
}
// useUiExtensionDialog hook accepts two type parameters:
// 1. The return value type, will be null or undefined if nothing is returned; falls back to any
type DialogReturn = Media | Media[] | null;
// 2. Optional props you'd like to access in the dialog
type DialogProps = { isList: boolean; media: Media | Media[] | '' };

const declaration: FieldExtensionDeclaration = {
  extensionType: ExtensionType.field,
  fieldType: FieldExtensionType.JSON,
  name: 'Cloudinary asset',
  description: 'Pick asset object in Cloudinary',
  features: [
    // Enables rendering of a form field
    FieldExtensionFeature.FieldRenderer,
    // Enables handling lists of values
    // Don't forget to enable multiple values when creating a UI extension field in Hygraph!
    FieldExtensionFeature.ListRenderer,
    // Enables rendering in content table view
    FieldExtensionFeature.TableRenderer,
  ],
  // Optional fields that will when adding or updating a UI extension in Hygraph
  config: {
    CLOUD_NAME: {
      displayName: 'Cloudinary cloud name',
      type: ConfigType.string,
      required: true,
    },
    API_KEY: {
      displayName: 'Cloudinary public api key',
      type: ConfigType.string,
      required: true,
    },
  },
};

function noop() {}

// Treat the dialog as a separate extension and render it at a dedicated route
// The dialog path you set here should later be passed as the first argument to the openDialog function
function App() {
  return (
    <ExtensionWrapper declaration={declaration}>
      <BrowserRouter>
        <Switch>
          <Route path="/" exact>
            <Extension />
          </Route>
          <Route path="/cloudinary" exact>
            <CloudinaryDialog />
          </Route>
        </Switch>
      </BrowserRouter>
    </ExtensionWrapper>
  );
}

function Extension() {
  const { isTableCell } = useFieldExtension();
  // isTableCell can be used to detect whether the extension is currently rendered in content table
  if (isTableCell) {
    return <TableCellRenderer />;
  }

  return <FormFieldRenderer />;
}

function FormFieldRenderer() {
  const {
    value: media,
    // field.isList reveals whether a field handles multiple values
    field: { isList },
    onChange,
    onFocus,
    onBlur,
    // expand opens a full-screen view
    expand,
    isExpanded,
    openDialog,
    extension: { config },
  } = useFieldExtension();

  const [isTransitioning, setIsTransitioning] = useState(false);

  useEffect(() => {
    setIsTransitioning(false);
  }, [isExpanded]);

  const [clickedMedia, setClickedMedia] = React.useState<Media>();
  // Note that in a form, an empty field's initial value is an empty string
  const showMedia = Array.isArray(media) ? media.length > 0 : Boolean(media);
  return (
    <div
      style={{
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'flex-start',
        padding: '10px',
        opacity: isTransitioning ? 0 : 1,
      }}
    >
      {isExpanded ? null : (
        <button
          style={{
            cursor: 'pointer',
            marginBottom: '10px',
            boxSizing: 'border-box',
            userSelect: 'none',
            color: '#6663FD',
            backgroundColor: '#F2F1FF',
            textAlign: 'center',
            lineHeight: '16px',
            display: 'inline-flex',
            border: '0px',
            borderRadius: '4px',
            fontWeight: 600,
            fontFamily:
              'Inter, -apple-system, system-ui, "Segoe UI", Helvetica, Arial, sans-serif',
            fontSize: '14px',
            verticalAlign: 'middle',
            padding: '8px',
          }}
          onClick={() => {
            onFocus();
            // openDialog accepts a route path as the first argument and,
            // optionally, an object with props that will be passed to the dialog.
            // These props will be returned by the useUiExtensionDialog hook
            //
            openDialog<DialogReturn, DialogProps>('/cloudinary', {
              // By default, native Hygraph dialogs have a maxWidth of 600px.
              // You can overwrite it by passing a maxWidth prop
              maxWidth: '90vw',
              isList,
              media,
              // openDialog returns a Promise with the value that was passed to onCloseDialog
            }).then((value) => {
              if (value) {
                onChange(value);
              }
              onBlur();
            });
          }}
        >
          Choose from Cloudinary
        </button>
      )}
      {showMedia &&
        (isMediaList(media) ? (
          media.map((item, index) => (
            <div
              style={{
                display: 'flex',
                flexDirection: 'row',
                alignItems: 'flex-start',
                opacity:
                  isExpanded && item.public_id !== clickedMedia?.public_id
                    ? 0
                    : 1,
              }}
              key={item.public_id + index}
            >
              <FormAsset
                cloudName={String(config.CLOUD_NAME)}
                media={item}
                isExpanded={
                  item.public_id === clickedMedia?.public_id && isExpanded
                }
                onOpen={() => {
                  // expand accepts a boolean that will be accessible as isExpanded
                  expand(true);
                  setIsTransitioning(true);
                  setClickedMedia(item);
                }}
                onClose={() => {
                  expand(false);
                  setIsTransitioning(true);
                  setClickedMedia(undefined);
                }}
              />
              <button
                style={{
                  marginLeft: '10px',
                  cursor: 'pointer',
                  boxSizing: 'border-box',
                  userSelect: 'none',
                  color: '#6663FD',
                  backgroundColor: 'transparent',
                  textAlign: 'center',
                  lineHeight: '14px',
                  display: 'inline-flex',
                  border: '0px',
                  fontWeight: 500,
                  fontFamily: 'sans-serif',
                  fontSize: '12px',
                  verticalAlign: 'middle',
                  padding: '4px',
                }}
                onClick={() => {
                  const newValues = media.filter(
                    (value) => value.public_id !== item.public_id
                  );
                  onChange(newValues);
                }}
              >
                X
              </button>
            </div>
          ))
        ) : (
          <FormAsset
            cloudName={String(config.CLOUD_NAME)}
            isExpanded={
              media.public_id === clickedMedia?.public_id && isExpanded
            }
            onOpen={() => {
              expand(true);
              setIsTransitioning(true);
              setClickedMedia(media);
            }}
            onClose={() => {
              expand(false);
              setIsTransitioning(true);
              setClickedMedia(undefined);
            }}
            media={media}
          />
        ))}
    </div>
  );
}

function TableCellRenderer() {
  const {
    value: media,
    isExpanded,
    expand,
    field: { isList },
    extension: { config },
  } = useFieldExtension();

  const [isTransitioning, setIsTransitioning] = useState(false);

  useEffect(() => {
    setIsTransitioning(false);
  }, [isExpanded]);

  if (Array.isArray(media) ? media.length === 0 : Boolean(media) === false) {
    return null;
  }

  if (isExpanded && isList) {
    return (
      <TableAssetsPreviewModal
        cloudName={String(config.CLOUD_NAME)}
        media={media}
        closeModal={() => {
          expand(false);
          setIsTransitioning(true);
        }}
      />
    );
  }

  return (
    <div
      style={{
        display: 'flex',
        opacity: isTransitioning ? 0 : 1,
      }}
    >
      {isMediaList(media) ? (
        media.map((item: Media, index: number) => (
          <div
            key={item.public_id + index}
            style={{
              width: 59,
              height: 59,
              marginRight: index === media.length - 1 ? 0 : 10,
            }}
          >
            <TableAsset
              cloudName={String(config.CLOUD_NAME)}
              media={item}
              onOpen={() => {
                expand(true);
                setIsTransitioning(true);
              }}
              isExpanded={false}
              onClose={noop}
            />
          </div>
        ))
      ) : (
        <div style={{ width: 59, height: 59 }}>
          <TableAsset
            cloudName={String(config.CLOUD_NAME)}
            isExpanded={isExpanded}
            onClose={() => {
              expand(false);
              setIsTransitioning(true);
            }}
            onOpen={() => {
              expand(true);
              setIsTransitioning(true);
            }}
            media={media}
          />
        </div>
      )}
    </div>
  );
}

function FormAsset({
  media,
  onOpen,
  onClose,
  isExpanded,
  cloudName,
}: {
  style?: React.CSSProperties;
  isExpanded: boolean;
  media: Media;
  onOpen: () => void;
  onClose: () => void;
  cloudName: string;
}) {
  if (isExpanded) {
    return (
      <FullScreenPreview
        cloudName={cloudName}
        media={media}
        onClose={onClose}
      />
    );
  }

  if (media.resource_type === 'image')
    return (
      <button
        onClick={onOpen}
        style={{
          border: 'none',
          outline: 'none',
          background: 'transparent',
          cursor: 'pointer',
        }}
      >
        <Image
          cloudName={cloudName}
          publicId={media.public_id}
          width="400"
          crop="scale"
        >
          <Placeholder />
        </Image>
      </button>
    );

  if (media.resource_type === 'video')
    return (
      <Video
        cloudName={cloudName}
        publicId={media.public_id}
        width="400"
        controls
      />
    );

  return null;
}

function TableAsset({
  isExpanded,
  media,
  onOpen,
  onClose,
  cloudName,
  style,
}: {
  style?: React.CSSProperties;
  isExpanded: boolean;
  media: Media;
  onOpen: () => void;
  onClose: () => void;
  cloudName: string;
}) {
  if (isExpanded) {
    return (
      <FullScreenPreview
        media={media}
        onClose={onClose}
        cloudName={cloudName}
      />
    );
  }

  return (
    <div
      tabIndex={0}
      onClick={onOpen}
      onKeyPress={(e) => {
        if (e.key === 'Enter') {
          onOpen();
        }
      }}
      style={{
        width: 59,
        height: 59,
        flexShrink: 0,
        ...style,
      }}
    >
      {media.resource_type === 'image' ? (
        <Image
          publicId={media.public_id}
          cloudName={cloudName}
          width="auto"
          crop="scale"
          style={{
            objectFit: 'cover',
            width: '100%',
            height: '100%',
            cursor: 'pointer',
          }}
        >
          <Placeholder />
        </Image>
      ) : media.resource_type === 'video' ? (
        <Video
          cloudName={cloudName}
          publicId={media.public_id}
          width="auto"
          style={{
            objectFit: 'cover',
            width: '100%',
            height: '100%',
            cursor: 'pointer',
          }}
        />
      ) : null}
    </div>
  );
}

function TableAssetsPreviewModal({
  closeModal,
  media,
  cloudName,
}: {
  media: Media[];
  closeModal: () => void;
  cloudName: string;
}) {
  const [maximizedAsset, setMaximizedAsset] = useState<Media | null>(null);

  if (maximizedAsset) {
    return (
      <TableAsset
        cloudName={cloudName}
        media={maximizedAsset}
        isExpanded
        onOpen={noop}
        onClose={() => {
          setMaximizedAsset(null);
        }}
      />
    );
  }

  return (
    <div
      aria-modal="true"
      role="dialog"
      style={{
        position: 'fixed',
        inset: 0,
        display: 'flex',
      }}
      onClick={closeModal}
    >
      <div
        style={{ margin: 'auto' }}
        onClick={(e) => {
          e.stopPropagation();
        }}
      >
        <CloseModalButton closeModal={closeModal} />
        <div
          style={{
            display: 'flex',
            borderRadius: '4px',
            backgroundColor: 'white',
            maxWidth: '800px',
            maxHeight: '400px',
            padding: '16px',
            overflowY: 'auto',
          }}
        >
          {media.map((item, index) => (
            <TableAsset
              isExpanded={false}
              cloudName={cloudName}
              media={item}
              key={item.public_id + index}
              onOpen={() => {
                setMaximizedAsset(item);
              }}
              onClose={() => {
                setMaximizedAsset(null);
              }}
              style={{
                width: 250,
                height: 200,
                marginRight: index === media.length - 1 ? 0 : 16,
              }}
            />
          ))}
        </div>
      </div>
    </div>
  );
}

function FullScreenPreview({
  media,
  cloudName,
  onClose,
}: {
  media: Media;
  onClose: () => void;
  cloudName: string;
}) {
  useEffect(() => {
    const handler = (e: KeyboardEvent) => {
      if (e.key === 'Escape') {
        onClose();
      }
    };
    window.addEventListener('keyup', handler);
    return () => {
      window.removeEventListener('keyup', handler);
    };
  }, [onClose]);

  return (
    <div
      aria-modal="true"
      role="dialog"
      style={{
        position: 'fixed',
        inset: 0,
        display: 'flex',
        alignItems: 'center',
        overflow: 'auto',
      }}
      onClick={(e) => {
        e.stopPropagation();
        onClose();
      }}
    >
      <CloseModalButton closeModal={onClose} />
      {media.resource_type === 'image' ? (
        <Image
          cloudName={cloudName}
          publicId={media.public_id}
          width="auto"
          style={{ maxWidth: '100%', margin: 'auto', maxHeight: '100%' }}
          crop="scale"
        >
          <Placeholder />
        </Image>
      ) : media.resource_type === 'video' ? (
        <Video
          cloudName={cloudName}
          publicId={media.public_id}
          controls
          style={{ maxWidth: '70vw', margin: 'auto', maxHeight: '100%' }}
        />
      ) : null}
    </div>
  );
}

function CloudinaryDialog() {
  const {
    extension: { config },
  } = useFieldExtension();
  // You can pass type parameters to useUiExtensionDialog
  // onCloseDialog function is always returned from the hook
  const { onCloseDialog, isList, media } = useUiExtensionDialog<
    DialogReturn,
    DialogProps
  >();
  useLayoutEffect(() => {
    // @ts-expect-error
    const mediaLibrary = window.cloudinary.createMediaLibrary(
      {
        cloud_name: config.CLOUD_NAME,
        api_key: config.API_KEY,
        remove_header: false,
        max_files: '10',
        multiple: isList,
        insert_caption: 'Add & close',
        inline_container: '#cloudinary_dialog',
        default_transformations: [
          [{ quality: 'auto' }, { fetch_format: 'auto' }],
          [
            {
              width: 80,
              height: 80,
              crop: 'fill',
              gravity: 'auto',
              radius: 'max',
            },
            { fetch_format: 'auto', quality: 'auto' },
          ],
        ],
        integration: {
          type: 'hygraph_cloudinary_extension',
          platform: 'hygraph',
          version: 1.0,
          environment: 'prod',
        },
      },
      {
        hideHandler: function () {
          // To close the dialog without returning a value to the fields,
          // call onCloseDialog with null or without an argument
          onCloseDialog();
        },
        insertHandler: function (data: { assets: Media[] }) {
          // Pass a single value to onCloseDialog to set it as the field value
          // or an array, if the field handles multiple values
          if (isList) {
            if (isMediaList(media)) {
              onCloseDialog([...media, ...data.assets]);
            } else {
              // initial field value is an empty string
              const newArray = isMediaType(media)
                ? [media, ...data.assets]
                : data.assets;
              onCloseDialog(newArray);
            }
          } else {
            onCloseDialog(data.assets[0]);
          }
        },
      }
    );
    mediaLibrary.show();
  }, [config.API_KEY, config.CLOUD_NAME, isList, media, onCloseDialog]);

  return (
    <div
      id="cloudinary_dialog"
      style={{
        height: '800px',
      }}
    />
  );
}

function CloseModalButton({ closeModal }: { closeModal: () => void }) {
  return (
    <button
      type="button"
      style={{
        cursor: 'pointer',
        userSelect: 'none',
        backgroundColor: 'transparent',
        textAlign: 'center',
        lineHeight: '16px',
        display: 'inline-flex',
        border: '0px',
        position: 'absolute',
        right: '10px',
        top: '10px',
        fontWeight: 500,
        background: 'white',
        color: 'black',
        fontSize: '16px',
        borderRadius: '4px',
        padding: '4px 8px',
        verticalAlign: 'middle',
        margin: 0,
      }}
      onClick={(event) => {
        event.preventDefault();
        event.stopPropagation();
        closeModal();
      }}
      onKeyPress={(event) => {
        event.preventDefault();
        event.stopPropagation();
        if (event.key === 'Enter') {
          closeModal();
        }
      }}
    >
      Close
    </button>
  );
}

export default App;
