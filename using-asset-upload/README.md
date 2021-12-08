# Working with the Asset Upload endpoint

[Join our Slack](https://slack.graphcms.com)

This example demonstrates how to programmatically import assets from a URL using the [Asset Upload endpoint](https://graphcms.com/docs/content-api/assets#uploading-assets). Uses [Bee-Queue](https://github.com/bee-queue/bee-queue) to process jobs (recommended for large data imports).

Included is an example JSON file ([`assets.json`](assets.json)).

## How to Use

### Download Manually

```bash
npx degit graphcms/graphcms-examples/using-asset-upload using-asset-upload
```

Add .env:

```bash
cp .env.sample .env
```

Provide values for `GRAPHCMS_TOKEN` and `GRAPHCMS_ENDPOINT` keys.

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
