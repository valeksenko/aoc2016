// https://adventofcode.com/2016/day/7
package main

import (
	"bufio"
	"fmt"
	"os"
)

func is_abba(rest string) bool {
	if len(rest) < 4 {
		return false
	}

	return (rest[0] == rest[3]) && (rest[1] == rest[2]) && (rest[0] != rest[1])
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	count := 0

	for scanner.Scan() {
		ip_address := scanner.Text()

		found := false
		hypernet := false
		search := true

		for i, c := range ip_address {
			switch c {
			case '[':
				search = false
			case ']':
				search = true
			default:
				if is_abba(ip_address[i:]) {
					if search {
						found = true
					} else {
						hypernet = true
					}
				}
			}
		}

		if found && !hypernet {
			count++
		}
	}

	fmt.Println(count)
}
