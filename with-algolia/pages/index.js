import algoliasearch from 'algoliasearch/lite';
import { InstantSearch, SearchBox, Hits } from 'react-instantsearch-dom';

const searchClient = algoliasearch(
  'HOUK2JPM8O',
  '7af261a39f13a1d238334a26f5def08b'
);

export default function IndexPage() {
  return (
    <InstantSearch searchClient={searchClient} indexName="products">
      <SearchBox />
      <Hits
        hitComponent={({ hit }) => (
          <pre key={hit.objectID}>{JSON.stringify(hit, null, 2)}</pre>
        )}
      />
    </InstantSearch>
  );
}
