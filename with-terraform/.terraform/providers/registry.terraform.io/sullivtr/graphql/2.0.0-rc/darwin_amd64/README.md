<p align="center">
  <img src="assets/icon.png" alt="graphql provider" width="400"/>

  <h3 align="center">Terraform GraphQL Provider</h3>

  <p align="center">
    <a href="https://github.com/sullivtr/terraform-provider-graphql/actions?query=workflow%3Abuild"><img alt="Build" src="https://img.shields.io/github/workflow/status/sullivtr/terraform-provider-graphql/build?label=build&logo=github&style=flat-square"></a>
    <a href="https://github.com/sullivtr/terraform-provider-graphql/actions?query=workflow%3A%22acceptance+tests%22"><img alt="Acceptance Tests" src="https://img.shields.io/github/workflow/status/sullivtr/terraform-provider-graphql/acceptance%20tests?label=acceptance%20tests&logo=github&style=flat-square"></a>
    <a href="https://github.com/sullivtr/terraform-provider-graphql/actions?query=workflow%3A%22e2e+tests%22"><img alt="E2E Test" src="https://img.shields.io/github/workflow/status/sullivtr/terraform-provider-graphql/e2e%20tests?label=e2e%20test&logo=github&style=flat-square"></a>
    <a href="https://codecov.io/gh/sullivtr/terraform-provider-graphql">
      <img src="https://img.shields.io/codecov/c/github/sullivtr/terraform-provider-graphql?logo=codecov&style=flat-square" />
    </a>
    <a href="https://github.com/sullivtr/terraform-provider-graphql/releases/latest"><img alt="Release" src="https://img.shields.io/github/v/release/sullivtr/terraform-provider-graphql?logo=github&style=flat-square"></a>
    <a href="https://github.com/sullivtr/terraform-provider-graphql/releases/latest"><img alt="Release" src="https://goreportcard.com/badge/github.com/sullivtr/terraform-provider-graphql?style=flat-square"></a>
  </p>
</p>

---

## Synopsis

A [Terraform](https://terraform.io) [GraphQL](https://graphql.org/) provider to manage the full lifecyle of graphql based api resources. 
  
## Docs:

#### Click [HERE](https://sullivtr.github.io/terraform-provider-graphql) to view the documentation site.

## Testing this provider:
- In the root of this project, run `make fulltest`
  This will build the plugin, and copy the binaries to the basic_test/terraform.d/* folder and run the E2E Test.

- To run a test without a build, simply run `make test`

- Run `go test -v ./...` to run the graphql package's internal unit & acceptance tests. 
  > NOTE: The acceptance tests utilize a mocked http response to simulate a graphql api. Therefore, TF_ACC is set automatically by the test init() functions. 
   
# License

MPL-2 - See the included LICENSE file for more details.


