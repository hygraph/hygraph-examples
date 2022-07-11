import {
  Wrapper,
  FieldExtensionType,
  FieldExtensionFeature,
  ExtensionDeclaration,
  useFieldExtension,
} from '@graphcms/uix-react-sdk';
import { useEffect } from 'react';
import './index.css';
import { lowerFirst, isEqual, sortBy } from 'lodash';

const customEqual = (
  value: { [key: string]: any },
  apiData: { [key: string]: any }
): boolean => {
  return Object.entries(apiData).reduce<boolean>((acc, [key, currApiData]) => {
    return acc && isEqual(value[key], currApiData);
  }, true);
};

const CustomRelationField = () => {
  const { value, onChange, extension, context, field, isTableCell } =
    useFieldExtension() as any;
  const titleFields = field.relatedModel.titleFields.map((tf: any) => {
    // TODO: make sure title field is a scalar field
    return tf.apiId;
  });
  const operationName = `AutofillQuery_${extension.id}`;
  const query = `query ${operationName} {
    fieldData:${lowerFirst(field.relatedModel.apiIdPlural)} {
      id
      ${titleFields.join('\n')}
    }
  }`;
  useEffect(() => {
    console.log('effect running');
    const headers = new Headers();
    headers.set('Authorization', `Bearer ${context.environment.authToken}`);
    const req = new Request(context.environment.endpoint, {
      headers,
      method: 'POST',
      body: JSON.stringify({
        query,
        operationName,
      }),
    });
    fetch(req)
      .then((res) => res.json())
      .then((resp) => {
        if (resp.errors) {
          throw new Error(
            `failed loading autofill data: ${JSON.stringify(resp)}`
          );
        }
        const autoFillData = resp.data.fieldData[0];
        if (autoFillData && !customEqual(value, autoFillData)) {
          console.log('updating value');

          onChange({ ...value, ...autoFillData });
        }
      });
  }, [value, context, extension, onChange, query, operationName]);
  return (
    <div className="relation-title">
      {sortBy(titleFields, ['position']).reduce((val: any, tf: any) => {
        const tfValue = value[tf];
        if (val === '') {
          return tfValue;
        }
        return `${val} - ${tfValue}`;
      }, ``)}
    </div>
  );
};

const declaration: ExtensionDeclaration = {
  extensionType: 'field',
  fieldType: FieldExtensionType.RELATION,
  name: 'Autofill Relation field',
  description:
    'On a *-to-one relation field, autofill the relation value with the first entry available.',
  features: [FieldExtensionFeature.FieldRenderer],
};

const Extension = () => {
  return (
    <Wrapper declaration={declaration}>
      <CustomRelationField />
    </Wrapper>
  );
};

export default Extension;
