// @ts-check
import {
  Wrapper,
  FieldExtensionType,
  FieldExtensionFeature,
  useFieldExtension,
  ExtensionType,
} from '@graphcms/uix-react-sdk';

function MyField() {
  const { value, onChange } = useFieldExtension();
  return <input value={value} onChange={(e) => onChange(e.target.value)} />;
}

/** @type {import('@graphcms/uix-react-sdk').FieldExtensionDeclaration} */
const declaration = {
  extensionType: ExtensionType.field,
  fieldType: FieldExtensionType.STRING,
  name: 'My custom field',
  features: [FieldExtensionFeature.FieldRenderer],
};

export default function MyCustomInputExtensionPage() {
  return (
    <Wrapper declaration={declaration}>
      <MyField />
    </Wrapper>
  );
}
