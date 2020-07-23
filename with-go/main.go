package main

import (
	"context"
	"html/template"
	"log"
	"net/http"

	"github.com/machinebox/graphql"
)

func main() {
	http.HandleFunc("/", getProducts)
	http.ListenAndServe(":8080", nil)
}

func getProducts(w http.ResponseWriter, r *http.Request) {
	client := graphql.NewClient("https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master")

	req := graphql.NewRequest(`
    { 
			products {
				slug
				name
			}
		}
	`)

	ctx := context.Background()

	type Product struct {
		Name string
		Slug string
	}

	type ProductPageData struct {
		Products []Product
	}

	var respData ProductPageData

	if err := client.Run(ctx, req, &respData); err != nil {
		log.Fatal(err)
	}

	tmpl := template.Must(template.ParseFiles("index.html"))
	tmpl.Execute(w, respData)

}
