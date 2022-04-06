console.log(window.GCUIX);
const declaration = {
  extensionType: 'field',
  fieldType: 'JSON',
  name: 'Asset Focal point',
  description: '',
  features: ['FieldRenderer', 'TableRenderer'],
};

const originalImage = document.getElementById('originalImage');
const preview_1_1 = document.getElementById('preview-1-1');
const preview_1_2 = document.getElementById('preview-1-2');
const preview_2_1 = document.getElementById('preview-2-1');
const coords = document.getElementById('coords');
const expandButton = document.getElementById('expand');
let isExpanded = false;

function updateExpandButton() {
  expandButton.innerText = isExpanded ? 'Collapse' : 'Expand';
}

document.addEventListener('DOMContentLoaded', () => {
  try {
    window.GCUIX.init({
      declaration,
      onProps: function (props) {
        const { isExpanded: isSdkExpanded, value } = props;

        if (value) {
          coords.innerText = JSON.stringify(value);
        }

        if (isSdkExpanded !== isExpanded) {
          isExpanded = isSdkExpanded;
          updateExpandButton();
        }
      },
    }).then((initialState) => {
      const { status, props } = initialState;
      if (status === 'ok') {
        const {
          value,
          onChange,
          form,
          model,
          field,
          locale,
          expand,
          isTableCell,
          isReadOnly,
        } = props;

        if (isTableCell) {
          document.body.classList.add('isTableCell');
          return;
        }

        if (model.apiId !== 'Asset') {
          throw new Error(
            'The Focal Point UI extension is meant to be used only on the Asset model'
          );
        }

        if (field.isLocalized === false) {
          throw new Error('Focal Point field must be localized');
        }

        expandButton.addEventListener('click', () => {
          expand(!isExpanded);
          if (!isExpanded) {
            document.body.classList.add('fullScreen');
          } else {
            document.body.classList.remove('fullScreen');
          }
        });

        form.subscribeToFieldState(
          `localization_${locale}.file`,
          ({ value }) => {
            const currentUrl = value?.handle
              ? `https://media.graphassets.com/${value.handle}`
              : 'https://via.placeholder.com/900x675?text=This+is+a+placeholder+image';

            [originalImage, preview_1_1, preview_1_2, preview_2_1].forEach(
              (img) => {
                if (img.getAttribute('src') !== currentUrl) {
                  img.setAttribute('src', currentUrl);
                }
              }
            );
          },
          { value: true }
        );

        makeFocalPoint(value || undefined, onChange, isReadOnly);
      }
    });
  } catch (error) {
    console.error(error);
  }
});
