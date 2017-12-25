package main

import (
	"log"

	"github.com/neighborhood999/fiveN1-rent-scraper"
)

func main() {
	o := rent.NewOptions()
	url, err := rent.GenerateURL(o)
	if err != nil {
		log.Fatalf("\x1b[91;1m%s\x1b[0m", err)
	}

	f := rent.NewFiveN1(url)
	f.Scrape(2)

	json := rent.ConvertToJSON(f.RentList)
	log.Println(string(json))
	// rent.ExportJSON(json)
}
