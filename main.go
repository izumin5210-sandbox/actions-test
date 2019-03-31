package main

import (
	stderrors "errors"
	"fmt"

	"github.com/pkg/errors"
)

func main() {
	if err := returnError2(); err != nil {
		fmt.Println(err)
	}
}

func returnError1() error {
	return stderrors.New("foobarbaz")
}

func returnError2() error {
	return returnError1()
}

func returnError3() error {
	return errors.Wrap(returnError1(), "error occurred")
}
