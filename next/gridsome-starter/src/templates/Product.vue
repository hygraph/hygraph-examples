<template>
  <Layout>
    <div>
      <h1 v-html="$page.gcms.product.name" />
      <p v-html="$page.gcms.product.description" />
      <p>
        {{
          new Intl.NumberFormat('de-DE', {
            style: 'currency',
            currency: 'EUR',
          }).format($page.gcms.product.price / 100)
        }}
      </p>
    </div>
  </Layout>
</template>

<page-query>
query GetProduct($slug: String) {
    gcms {
        product(where: {slug: $slug}) {
            name
            description
            price
        }
    }
}
</page-query>
