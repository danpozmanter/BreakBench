// LEVEL: STD

package main

import (
	"encoding/json"
	"fmt"
)

type Config struct {
	Port  int  `json:"port"`
	Debug bool `json:"debug"`
}

func main() {
	var good, bad Config
	if err := json.Unmarshal([]byte(`{"port": 8080, "debug": true}`), &good); err != nil {
		panic(err)
	}
	result := "valid"
	if err := json.Unmarshal([]byte(`{port: 8080}`), &bad); err != nil {
		result = "invalid"
	}
	fmt.Println(good.Port, result)
}
