// https://adventofcode.com/2016/day/7#part2
package main

import (
	"bufio"
	"fmt"
	"os"
)

func match(found []string, hypernet []string) bool {

	for _, aba := range found {
		bab := string(aba[1]) + string(aba[0]) + string(aba[1])
		for _, matching := range hypernet {
			if matching == bab {
				return true
			}
		}
	}

	return false
}

func is_aba(rest string) bool {
	if len(rest) < 3 {
		return false
	}

	if (rest[1] == '[') || (rest[1] == ']') {
		return false
	}

	return (rest[0] == rest[2]) && (rest[0] != rest[1])
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	count := 0

	for scanner.Scan() {
		ip_address := scanner.Text()

		var found []string
		var hypernet []string

		search := true

		for i, c := range ip_address {
			switch c {
			case '[':
				search = false
			case ']':
				search = true
			default:
				if is_aba(ip_address[i:]) {
					if search {
						found = append(found, ip_address[i:i+3])
					} else {
						hypernet = append(hypernet, ip_address[i:i+3])
					}
				}
			}
		}

		if match(found, hypernet) {
			count++
		}
	}

	fmt.Println(count)
}
