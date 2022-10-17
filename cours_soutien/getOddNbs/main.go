package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	numbers := getNumbers()
	stringNbs := separateString(numbers)
	stringsToInt := stringInt(stringNbs)
	fmt.Print(evenOrOdd(stringsToInt))
}

func getNumbers() string {
	fmt.Println("Write down few numbers separated with spaces :")
	consolereader := bufio.NewReader(os.Stdin)
	input, err := consolereader.ReadString('\n') // this will prompt the user for input
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	return input
}

func separateString(s string) []string {
	tRune := []rune(s)
	tString := []string{}
	tempString := ""
	for i := 0; i < len(tRune); i++ {
		fmt.Print(string(tRune[i]))
		if tRune[i] >= 48 && tRune[i] <= 57 {
			tempString += string(tRune[i])
		} else {
			tString = append(tString, tempString)
			tempString = ""
		}
	}
	return tString
}

func stringInt(tabS []string) []int {
	tabInt := []int{}
	for i := 0; i < len(tabS); i++ {
		tabInt = append(tabInt, Atoi(tabS[i]))
	}
	return tabInt
}

func evenOrOdd(tabInt []int) []int {
	newTab := []int{}
	for i := 0; i < len(tabInt); i++ {
		if tabInt[i]%2 != 0 {
			newTab = append(newTab, tabInt[i])
		}
	}
	return newTab
}

func Atoi(s string) int {
	tab := []rune(s)
	var tot int
	for i := 0; i < len(tab); i++ {
		if tab[i] >= 48 && tab[i] <= 57 {
			tot *= 10
			tot += int(tab[i] - 48)
		} else {
			return 0
		}
	}
	return tot
}

// func separateString(s string) []string {
// 	tRune := []rune(s)
// 	tString := []string{}
// 	tempString := ""
// 	for i := 0; i < len(tRune); i++ {
// 		fmt.Print(string(tRune[i]))
// 		if string(tRune[i]) == " " {
// 			tString = append(tString, tempString)
// 			tempString = ""
// 		} else {
// 			tempString += string(tRune[i])
// 		}
// 	}
// 	return tString
// }
