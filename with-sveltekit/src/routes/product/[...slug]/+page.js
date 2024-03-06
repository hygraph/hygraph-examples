import { GraphQLClient } from 'graphql-request';

/** @type {import('./$types').PageLoad} */
export const load = async ({ params }) => {
	const hygraph = new GraphQLClient(
		'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
		{
			headers: {}
		}
	);

	const { product } = await hygraph.request(
		`query ProductPageQuery($slug: String!) {
	        product(where: { slug: $slug }) {
	          name
	          description
	          price
	        }
	      }`,
		{
			slug: params.slug
		}
	);

	return {
		product
	};
};
