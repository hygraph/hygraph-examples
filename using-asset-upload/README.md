# Working with the Asset Upload endpoint

[Join our Slack](https://slack.hygraph.com)

This example demonstrates how to programmatically import assets from a URL using the [Asset Upload endpoint](https://hygraph.com/docs/content-api/assets#uploading-assets). Uses [Bee-Queue](https://github.com/bee-queue/bee-queue) to process jobs (recommended for large data imports).

Included is an example JSON file ([`assets.json`](assets.json)).

## How to Use

### Download Manually

```bash
npx degit hygraph/hygraph-examples/using-asset-upload using-asset-upload
```

Add .env:

```bash
cp .env.sample .env
```

Provide values for `HYGRAPH_TOKEN` and `HYGRAPH_ENDPOINT` keys.

Install & Run:

```bash
cd using-asset-upload
npm install
npm run start assets.json
# or
cd using-asset-upload
yarn
yarn start assets.json
```
