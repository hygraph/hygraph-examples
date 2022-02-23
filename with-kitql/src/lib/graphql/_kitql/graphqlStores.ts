import { browser } from '$app/env';
import * as Types from "$lib/graphql/_kitql/graphqlTypes";
import { defaultStoreValue, RequestStatus, type RequestParameters, type RequestResult } from '@kitql/client';
import { writable } from 'svelte/store';
import { kitQLClient } from '../kitQLClient';
 
/**
 * KitQL Reset Cache for `AllProductsQuery` Operation
 */
export function AllProductsQueryCacheReset(
	variables: Types.AllProductsQueryVariables | null = null,
	allOperationKey: boolean = true,
	withResetStore: boolean = true
) {
	kitQLClient.cacheRemove('AllProductsQuery', { variables, allOperationKey });
	if (withResetStore) {
		AllProductsQueryStore.set(defaultStoreValue);
	}
}

/**
 * KitQL Svelte Store with the latest `AllProductsQuery` Operation
 */
export const AllProductsQueryStore = writable<RequestResult<Types.AllProductsQuery, Types.AllProductsQueryVariables>>(defaultStoreValue);

/**
 * For SSR, you need to provide 'fetch' from the load function
 * For the client you can avoid to provide the 'fetch' native function
 * @param params
 * @returns the latest AllProductsQuery operation and fill the AllProductsQueryStore
 */
// prettier-ignore
export async function AllProductsQuery(
  params?: RequestParameters<Types.AllProductsQueryVariables>
): Promise<RequestResult<Types.AllProductsQuery, Types.AllProductsQueryVariables>> {

  let storedVariables = null;
	AllProductsQueryStore.update((c) => {
		storedVariables = c.variables;
		return { ...c, status: RequestStatus.LOADING };
	});
	let { fetch, variables, settings } = params ?? {};
  let { cache } = settings ?? {};

  if (variables === undefined) {
    variables = storedVariables;
  }
	const res = await kitQLClient.request<Types.AllProductsQuery, Types.AllProductsQueryVariables>({
		document: Types.AllProductsDocument,
		variables,
		skFetch: fetch,
		cacheKey: "AllProductsQuery",
		cache,
		browser
	});
	const result = { status: RequestStatus.DONE, ...res, variables };
	AllProductsQueryStore.set(result);
	return result;
}

/**
 * KitQL Reset Cache for `GetProductQuery` Operation
 */
export function GetProductQueryCacheReset(
	variables: Types.GetProductQueryVariables | null = null,
	allOperationKey: boolean = true,
	withResetStore: boolean = true
) {
	kitQLClient.cacheRemove('GetProductQuery', { variables, allOperationKey });
	if (withResetStore) {
		GetProductQueryStore.set(defaultStoreValue);
	}
}

/**
 * KitQL Svelte Store with the latest `GetProductQuery` Operation
 */
export const GetProductQueryStore = writable<RequestResult<Types.GetProductQuery, Types.GetProductQueryVariables>>(defaultStoreValue);

/**
 * For SSR, you need to provide 'fetch' from the load function
 * For the client you can avoid to provide the 'fetch' native function
 * @param params
 * @returns the latest GetProductQuery operation and fill the GetProductQueryStore
 */
// prettier-ignore
export async function GetProductQuery(
  params?: RequestParameters<Types.GetProductQueryVariables>
): Promise<RequestResult<Types.GetProductQuery, Types.GetProductQueryVariables>> {

  let storedVariables = null;
	GetProductQueryStore.update((c) => {
		storedVariables = c.variables;
		return { ...c, status: RequestStatus.LOADING };
	});
	let { fetch, variables, settings } = params ?? {};
  let { cache } = settings ?? {};

  if (variables === undefined) {
    variables = storedVariables;
  }
	const res = await kitQLClient.request<Types.GetProductQuery, Types.GetProductQueryVariables>({
		document: Types.GetProductDocument,
		variables,
		skFetch: fetch,
		cacheKey: "GetProductQuery",
		cache,
		browser
	});
	const result = { status: RequestStatus.DONE, ...res, variables };
	GetProductQueryStore.set(result);
	return result;
}
