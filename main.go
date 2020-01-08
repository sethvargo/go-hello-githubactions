package main

import "github.com/sethvargo/go-githubactions"

func main() {
	fruit := githubactions.GetInput("fruit")
	if fruit == "" {
		githubactions.Fatalf("missing input 'fruit'")
	}
	githubactions.AddMask(fruit)
}
