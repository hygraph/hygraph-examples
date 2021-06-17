import {
  Wrapper,
  useUiExtension,
  FieldExtensionType,
  FieldExtensionFeature,
} from '@graphcms/uix-react-sdk';
import { useRouter } from 'next/router';

function MyField() {
  const { value, onChange } = useUiExtension();

  return (
    <input
      value={value}
      onChange={({ target: { value: val } }) => onChange(val)}
    />
  );
}

export default function MyCustomInputExtensionPage() {
  const router = useRouter();

  const { extensionUid } = router.query;

  if (!extensionUid) return null;

  const declaration = {
    extensionType: 'field',
    fieldType: FieldExtensionType.STRING,
    name: 'My custom field',
    features: [FieldExtensionFeature.FieldRenderer],
  };

  return (
    <Wrapper uid={extensionUid} declaration={declaration}>
      <MyField />
    </Wrapper>
  );
}
