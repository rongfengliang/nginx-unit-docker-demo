package main

import (
	"math"
	"net/http"
	"nginx/unit"
)

func term(ch chan float64, k float64) {
	ch <- 4 * math.Pow(-1, k) / (2*k + 1)
}

func handler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("appdemorong"))
}

func main() {
	http.HandleFunc("/", handler)
	//http.ListenAndServe(":8080", nil)
	unit.ListenAndServe(":8089", nil)
}
