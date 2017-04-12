package greeting

const testVersion = 3

// HelloWorld greets you, as a good HelloWorld program does
func HelloWorld(input string) string {
	var greet = "World"

	if input != "" {
		greet = input
	}

	return "Hello, " + greet + "!"
}
