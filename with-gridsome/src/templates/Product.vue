<template>
  <Layout>
    <div>
      <h1 v-html="$page.hygraph.product.name" />
      <p v-html="$page.hygraph.product.description" />
      <p>
        {{
          new Intl.NumberFormat('de-DE', {
            style: 'currency',
            currency: 'EUR',
          }).format($page.hygraph.product.price / 100)
        }}
      </p>
    </div>
  </Layout>
</template>

<page-query>
query GetProduct($slug: String) {
    hygraph {
        product(where: {slug: $slug}) {
            name
            description
            price
        }
    }
}
</page-query>
