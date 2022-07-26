import { KitQLClient } from '@kitql/client'

export const kitQLClient = new KitQLClient({
  url: 'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
  credentials: 'omit',
  defaultCache: 1000 * 60 * 3,
  headersContentType: 'application/json',
  logType: ['client', 'server', 'operationAndvariables'],
})
