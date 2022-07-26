# UI Extensions ⨯ Bynder

[Join our Slack](https://slack.hygraph.com)

This example integrates Hygraph with Bynder. It leverages Bynder's Compact View v2 component to browse assets from Bynder and use these within Hygraph content entries.

## How to Use

Deploy the code to Vercel, Netlify, GitHub Pages, or run locally, and install on Hygraph as a UI extension using the URL to your index page as the URL for your extension, and run the compatibility test.

You can get started with our hosted example, but you should deploy and maintain this on your own host: `https://hygraph-uix-bynder.vercel.app/`

### Example Config Settings

When configuring the extension you'll be asked for the following:

| Name                    | Type    | Description                                                     | Example                                   |
| ----------------------- | ------- | --------------------------------------------------------------- | ----------------------------------------- |
| Default Domain          | String  | Your Bynder portal url                                          | `https://<your-domain>.bynder.com/`       |
| Default domain editable | Boolean | Should users be able to change the default domain?              |                                           |
| Available asset types   | String  | Determines which asset types your users will be able to select. | `["image", "audio", "video", "document"]` |

Follow the docs about [Hygraph UI extensions](https://hygraph.com/docs/ui-extensions).

### Download Manually

```bash
npx degit hygraph/hygraph-examples/uix-bynder-input uix-bynder-input
```

You'll then need to run a server locally, if you're on Mac, you can run a simple Python server within your project directory:

```bash
python -m SimpleHTTPServer 8000
```

Alternatively, you could run something like [http-server](https://www.npmjs.com/package/http-server).

## Going further

- [UI Extensions Documentation](https://hygraph.com/docs/ui-extensions)
- [Compact View on the Bynder Knowledge Base](https://help.bynder.com/system/compact-view.htm)
- [Compact View in the Bynder Developer Documentation](https://developer-docs.bynder.com/UI%20components/)
- [Bynder OAuth2 Documentation](https://developer-docs.bynder.com/authentication-oauth2-oauth-apps)
