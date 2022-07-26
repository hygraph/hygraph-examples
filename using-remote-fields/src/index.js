require('dotenv').config();

const { newMigration, FieldType } = require('@graphcms/management');

// Create a new `migration` instance
const migration = newMigration({
  authToken: process.env.HYGRAPH_MIGRATION_TOKEN,
  endpoint: process.env.HYGRAPH_ENDPOINT,
});

// Create the type definitions for objects returned from the Stripe API
migration.createRemoteTypeDefinition({
  definition:
    'type StripeProduct { id: ID! name: String!, description: String }',
  displayName: 'Stripe Product',
  description: 'Fields belonging to the Stripe Product.',
});

migration.createRemoteTypeDefinition({
  definition:
    'type StripeRecurringPrice { interval: String!, interval_count: Int! }',
  displayName: 'Stripe Recurring Price',
  description: 'Fields belonging to the Stripe Price.',
});

migration.createRemoteTypeDefinition({
  definition:
    'type StripePrice { id: ID!, active: Boolean!, currency: String!, unit_amount: Int!, type: String!, product: StripeProduct!, recurring: StripeRecurringPrice! }',
  displayName: 'Stripe Price',
  description: 'Fields belonging to the recurring element of the Stripe Price.',
});

// Create a new `PricingPlan` model, with associated fields
const pricingPlanModel = migration.createModel({
  apiId: 'PricingPlan',
  apiIdPlural: 'PricingPlans',
  displayName: 'Pricing Plan',
});

pricingPlanModel.addSimpleField({
  apiId: 'stripeMonthlyPriceId',
  displayName: 'Stripe Monthly Price ID',
  description: 'The ID of the related Stripe Price record.',
  isRequired: true,
  type: FieldType.String,
});

pricingPlanModel.addSimpleField({
  apiId: 'stripeAnnualPriceId',
  displayName: 'Stripe Annual Price ID',
  description: 'The ID of the related Stripe Price record.',
  isRequired: true,
  type: FieldType.String,
});

// Create the necessary Remote Fields to fetch data from Stripe, including authorization header
const stripeRemoteConfig = {
  headers: {
    Authorization: `Bearer ${process.env.STRIPE_SECRET_KEY}`,
  },
  method: 'GET',
  returnType: 'StripePrice',
};

pricingPlanModel.addRemoteField({
  apiId: 'stripeMonthlyPrice',
  displayName: 'Stripe Monthly Price',
  remoteConfig: {
    url: 'https://api.stripe.com/v1/prices/{stripeMonthlyPriceId}?expand[]=product',
    ...stripeRemoteConfig,
  },
});

pricingPlanModel.addRemoteField({
  apiId: 'stripeAnnualPrice',
  displayName: 'Stripe Annual Price',
  remoteConfig: {
    url: 'https://api.stripe.com/v1/prices/{stripeAnnualPriceId}?expand[]=product',
    ...stripeRemoteConfig,
  },
});

migration.run();
