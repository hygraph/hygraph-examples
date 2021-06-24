package main

import (
	"context"
	"encoding/json"
	"fmt"
	"log"

	"github.com/machinebox/graphql"
)

type ProductResponse struct {
	Products []Product `json:"products"`
}

type Product struct {
	Name        string `json:"name"`
	Description string `json:"description"`
	Price       int    `json:"price"`
}

var client *graphql.Client

func setupClient() {
	client = graphql.NewClient("https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master")
}

func getAllProducts() {
	query := graphql.NewRequest(`
		{
			products {
				name
				description
				price
			}
		}
	`)

	ctx := context.Background()

	var responseData ProductResponse

	if err := client.Run(ctx, query, &responseData); err != nil {
		log.Fatal(err)
	}

	jsonResponse, _ := json.MarshalIndent(responseData, "", "\t")

	fmt.Printf("%+v\n", string(jsonResponse))
}

func main() {
	setupClient()
	getAllProducts()
}
