# GraphCMS ⨯ GraphQL Mesh

[Join our Slack](https://slack.graphcms.com)

This example demonstrates how to use GraphQL mesh to serve 3 separate APIs, GraphCMS, CartQL, and SpaceXLand.

[![Clone project](https://graphcms.com/button)](https://app.graphcms.com/clone/0ff23f7a41ce4da69a366ab299cc24d8)

## How to Use

### Download Manually

```bash
npx degit graphcms/graphcms-examples/with-graphql-mesh with-graphql-mesh
```

Install & Run:

```bash
cd with-graphql-mesh
npm install
npm start
```

## Try it yourself

<details>
  <summary>Example query</summary>
  
  Fetch products from GraphCMS, a cart from CartQL, and recent Space X launches in one request:

```graphql
{
  products {
    id
    name
    price
    localizations(includeCurrent: true) {
      price
      locale
    }
    image {
      url
    }
  }
  cart(id: "my-unique-cart-id") {
    id
    totalItems
    totalUniqueItems
    isEmpty
    abandoned
    subTotal {
      amount
      currency {
        code
        symbol
      }
      formatted
    }
  }
  launchesPast(limit: 10) {
    mission_name
    launch_date_local
    launch_site {
      site_name_long
    }
    rocket {
      rocket_name
    }
  }
}
```

</details>
<details>
  <summary>Example response</summary>

```json
{
  "data": {
    "products": [
      {
        "id": "ck8snb68g015q01582eneqegi",
        "name": "Long Sleeve Tee 2",
        "price": 1900,
        "localizations": [
          {
            "price": 1900,
            "locale": "en"
          },
          {
            "price": 1900,
            "locale": "de"
          }
        ],
        "image": {
          "url": "https://media.graphcms.com/1bKpf5ihQpyEeRWXn8cg"
        }
      },
      {
        "id": "ck8snbwgw015n015710srq03g",
        "name": "Short Sleeve Tee",
        "price": 1900,
        "localizations": [
          {
            "price": 1900,
            "locale": "en"
          }
        ],
        "image": {
          "url": "https://media.graphcms.com/hmQEPi4NR4ygnMGvRmFB"
        }
      },
      {
        "id": "ckckfm4io04460165s8q38b4h",
        "name": "Cap",
        "price": 200,
        "localizations": [
          {
            "price": 200,
            "locale": "en"
          }
        ],
        "image": {
          "url": "https://media.graphcms.com/DhwyUSxTTA6q9GjXBLsa"
        }
      }
    ],
    "cart": {
      "id": "my-unique-cart-id",
      "totalItems": 0,
      "totalUniqueItems": 0,
      "isEmpty": true,
      "abandoned": false,
      "subTotal": {
        "amount": 0,
        "currency": {
          "code": "USD",
          "symbol": "$"
        },
        "formatted": "$0.00"
      }
    },
    "launchesPast": [
      {
        "mission_name": "Starlink-15 (v1.0)",
        "launch_date_local": "2020-10-24T11:31:00-04:00",
        "launch_site": {
          "site_name_long": "Cape Canaveral Air Force Station Space Launch Complex 40"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "Sentinel-6 Michael Freilich",
        "launch_date_local": "2020-11-21T09:17:00-08:00",
        "launch_site": {
          "site_name_long": "Vandenberg Air Force Base Space Launch Complex 4E"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "Crew-1",
        "launch_date_local": "2020-11-15T19:27:00-05:00",
        "launch_site": {
          "site_name_long": "Kennedy Space Center Historic Launch Complex 39A"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "GPS III SV04 (Sacagawea)",
        "launch_date_local": "2020-11-05T18:24:00-05:00",
        "launch_site": {
          "site_name_long": "Cape Canaveral Air Force Station Space Launch Complex 40"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "Starlink-14 (v1.0)",
        "launch_date_local": "2020-10-24T11:31:00-04:00",
        "launch_site": {
          "site_name_long": "Cape Canaveral Air Force Station Space Launch Complex 40"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "Starlink-13 (v1.0)",
        "launch_date_local": "2020-10-18T08:25:00-04:00",
        "launch_site": {
          "site_name_long": "Kennedy Space Center Historic Launch Complex 39A"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "Starlink-12 (v1.0)",
        "launch_date_local": "2020-10-06T07:29:00-04:00",
        "launch_site": {
          "site_name_long": "Kennedy Space Center Historic Launch Complex 39A"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "Starlink-11 (v1.0)",
        "launch_date_local": "2020-09-03T08:46:00-04:00",
        "launch_site": {
          "site_name_long": "Kennedy Space Center Historic Launch Complex 39A"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "SAOCOM 1B, GNOMES-1, Tyvak-0172",
        "launch_date_local": "2020-08-30T19:18:00-04:00",
        "launch_site": {
          "site_name_long": "Cape Canaveral Air Force Station Space Launch Complex 40"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      },
      {
        "mission_name": "Starlink-10 (v1.0) & SkySat 19-21",
        "launch_date_local": "2020-08-18T10:31:00-04:00",
        "launch_site": {
          "site_name_long": "Cape Canaveral Air Force Station Space Launch Complex 40"
        },
        "rocket": {
          "rocket_name": "Falcon 9"
        }
      }
    ]
  }
}
```

</details>
