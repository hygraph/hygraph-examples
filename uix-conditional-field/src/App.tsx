import React from 'react';
import {
  Wrapper as ExtensionWrapper,
  useUiExtension,
  FieldExtensionType,
  FieldExtensionFeature,
  FieldExtensionDeclaration,
  VisibilityTypes,
  VisibilityMap,
} from '@graphcms/uix-react-sdk';

// Typing the declaration will ensure correct types for the values returned by useUiExtension
const declaration: FieldExtensionDeclaration = {
  extensionType: 'field',
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
      type: 'string',
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
  // Pass a type parameter to useUiExtension hook for better developer experience
  // @ts-expect-error
  const { setFieldsVisibility, fieldConfig, onChange, value } =
    useUiExtension<typeof declaration>();

  const fieldsToToggle = (fieldConfig?.fieldsToToggle || '') as string;

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
        acc[curr] = value ? VisibilityTypes.READ_WRITE : VisibilityTypes.HIDDEN;
        return acc;
      }, {});

    setFieldsVisibility(fieldsVisibilityMap);
  }, [value, setFieldsVisibility, fieldsToToggle]);

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
