import React from 'react';
import {
  Wrapper as ExtensionWrapper,
  useFieldExtension,
  FieldExtensionType,
  FieldExtensionFeature,
  FieldExtensionDeclaration,
  VisibilityType,
  VisibilityMap,
  ExtensionType,
  ConfigType,
} from '@graphcms/uix-react-sdk';

const declaration: FieldExtensionDeclaration = {
  extensionType: ExtensionType.field,
  fieldType: FieldExtensionType.BOOLEAN,
  name: 'UIX Conditional field',
  description: 'Hide/Show fields depending on some condition',
  features: [
    // Enables rendering of a form field
    FieldExtensionFeature.FieldRenderer,
  ],
  // Optional fieldsConfig that can be saved while creating this field in Schema View
  fieldConfig: {
    fieldsToToggle: {
      displayName:
        'Comma separated API IDs of field to toggle when UIX checkbox is updated',
      type: ConfigType.string,
      required: true,
    },
  },
};

export default function App() {
  return (
    <ExtensionWrapper declaration={declaration}>
      <UIX />
    </ExtensionWrapper>
  );
}

function UIX() {
  const { form, extension, onChange, value } = useFieldExtension();

  const fieldsToToggle = String(extension.fieldConfig?.fieldsToToggle || '');

  // Cross domain data transfer is a bit slow, so we use transitionary state for immediate UI feedback
  const [isTransitioning, setIsTransitioning] = React.useState(false);

  React.useEffect(() => {
    setIsTransitioning(false);
  }, [value]);

  React.useEffect(() => {
    if (!fieldsToToggle) return;

    const fieldsVisibilityMap = fieldsToToggle
      .split(',')
      .map((x) => x.trim())
      .filter(Boolean)
      .reduce<VisibilityMap>((acc, curr) => {
        acc[curr] = value ? VisibilityType.READ_WRITE : VisibilityType.HIDDEN;
        return acc;
      }, {});

    form.setFieldsVisibility(fieldsVisibilityMap);
  }, [value, fieldsToToggle, form]);

  return (
    <label>
      <input
        type="checkbox"
        disabled={isTransitioning}
        checked={Boolean(value)}
        onChange={() => {
          onChange(!value);
          setIsTransitioning(true);
        }}
      />{' '}
      Toggle{' '}
      {fieldsToToggle
        .split(',')
        .map((x) => x.trim())
        .join(', ')}{' '}
      Fields
    </label>
  );
}
