terraform {
  required_providers {
    graphql = {
      source  = "sullivtr/graphql"
      version = "2.0.0-rc"
    }
  }
}

provider "graphql" {
  url = var.hygraph_endpoint
  headers = {
    "Authorization" = "Bearer ${var.HYGRAPH_TOKEN}"
  }
}

resource "graphql_mutation" "create_product" {
  mutation_variables = {
    "name"  = "My new product"
    "slug"  = "my-new-product"
    "price" = 1000
  }

  read_query_variables = {
    "slug" = "my-new-product"
  }

  compute_from_create = false

  compute_mutation_keys = {
    "id" = "product.id"
  }

  create_mutation = file("./mutations/createProduct.graphql")
  update_mutation = file("./mutations/updateProduct.graphql")
  delete_mutation = file("./mutations/deleteProduct.graphql")
  read_query      = file("./queries/getProductBySlug.graphql")
}