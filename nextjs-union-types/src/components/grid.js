import * as Blocks from './index';

function Grid({ columns }) {
  if (!columns || !columns.length) return null;

  return (
    <div className="grid md:grid-cols-3 row-gap-4 md:row-gap-0 gap-4 max-w-4xl mx-auto px-6 py-12 md:py-20">
      {columns.map((column, index) => {
        const Component = Blocks[column.__typename];

        if (!Component) return null;

        return <Component key={index} {...column} />;
      })}
    </div>
  );
}

export default Grid;
