# Working with the Remote Fields

[Join our Slack](https://slack.graphcms.com)

This example demonstrates how to programmatically build a project schema using the [GraphCMS Management SDK](https://www.npmjs.com/package/@graphcms/management).

Using [Remote Fields](https://graphcms.com/docs/schema/field-types#remote), we create a `PricingPlan` model to query for product/price data directly from the [Stripe API](https://stripe.com/docs/api).

## How to Use

### Download Manually

```bash
npx degit graphcms/graphcms-examples/using-remote-fields using-remote-fields
```

Add .env:

```bash
cp .env.sample .env
```

Provide values for `GRAPHCMS_MIGRATION_TOKEN`, `GRAPHCMS_URL` and `STRIPE_SECRET_KEY` keys.

Install & Run:

```bash
cd using-management-sdk
npm install
npm run start
# or
cd using-management-sdk
yarn
yarn start
```
