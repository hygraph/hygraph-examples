# Working with the Asset Upload proxy

[Join our Slack](https://slack.graphcms.com)

This example demonstrates how to proxy uploads from your client application to GraphCMS to prevent leaking the Permanent Auth Token needed to [upload new assets](https://graphcms.com/docs/content-api/assets#uploading-assets).

[Read more about this on our blog](https://graphcms.com/blog/working-with-react-dropzone-and-graphcms-uploads)

## How to Use

### Download Manually

```bash
npx degit hygraph/hygraph-examples/with-upload-proxy with-upload-proxy
```

Add .env:

```bash
cp .env.sample .env
```

Provide values for `GRAPHCMS_TOKEN` and `GRAPHCMS_ENDPOINT` keys.

The `GRAPHCMS_TOKEN` must have permission to create and read gassets.

The `GRAPHCMS_ENDPOINT` must be appended with `/upload`.

Install & Run:

```bash
cd with-upload-proxy
npm install
npm run dev
# or
cd with-upload-proxy
yarn
yarn dev
```

Once the server is running, make a request to `http://localhost:4000/upload` with your `fileUpload` using `Content-Type: multipart/form-data`.
