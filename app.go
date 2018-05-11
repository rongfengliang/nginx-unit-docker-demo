package main

import (
	"net/http"
	"nginx/unit"
)

func handler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("appdemorong"))
}

func main() {
	http.HandleFunc("/", handler)
	//http.ListenAndServe(":8080", nil)
	unit.ListenAndServe(":8089", nil)
}
