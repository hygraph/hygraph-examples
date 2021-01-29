import * as React from 'react';
import { MDXProvider } from '@mdx-js/react';

const wrapRootElement = ({ element }) => (
  <MDXProvider components={{ Test: () => 'This is a test MDX component' }}>
    {element}
  </MDXProvider>
);

export { wrapRootElement };
