package main

import (
	"bufio"
	"log"
	"os"
)

func getLines(path string) []string {
    f, err := os.Open(path)
    if err != nil {
        log.Fatal(err)
    }
    defer f.Close()

    scanner := bufio.NewScanner(f)

    lines := []string{}
    for scanner.Scan() {
        lines = append(lines, scanner.Text())
    }

    return lines
}
