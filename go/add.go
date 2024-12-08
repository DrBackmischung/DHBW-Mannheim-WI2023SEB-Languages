package main
import "fmt"

func add(a int, b int) int {
    return a + b
}

func main() {
    fmt.Println("Sum:", add(5, 7))
}
