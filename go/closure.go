package main

import "fmt"

func counter() (func(), func() int, func(int)) {
    count := 0

    inc := func() {
        count++
    }

    get := func() int {
        return count
    }

    set := func(val int) {
        count = val
    }
    
    return inc, get, set
}


func main() {
    inc, get, set := counter()
    inc()
    inc()
    set(10)

    if get() != 10 {
        panic("This should not be trigged")
    }

    fmt.Println("Go is ok")
}