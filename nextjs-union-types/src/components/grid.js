import * as Blocks from './index';

function Grid({ columns }) {
  if (!columns || !columns.length) return null;

  return columns.map((column, index) => {
    const Component = Blocks[column.__typename];

    if (!Component) return null;

    return <Component key={index} {...column} />;
  });
}

export default Grid;
