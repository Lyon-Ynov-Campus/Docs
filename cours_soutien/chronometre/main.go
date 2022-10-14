package main

import (
	"fmt"
	"strconv"
	"time"
)

func main() {
	chrono2()
}

func chrono1() {
	hour := 0
	minute := 0
	seconde := 0
	for {
		fmt.Print("\033[H\033[2J")
		seconde++
		if seconde >= 60 {
			minute++
			seconde = 0
		}
		if minute >= 60 {
			minute = 0
			hour++
		}
		if hour >= 24 {
			hour = 0
		}
		fmt.Println("Il est " + strconv.Itoa(hour) + "h" + strconv.Itoa(minute) + ":" + strconv.Itoa(seconde))
		time.Sleep(time.Second)
	}
}

func chrono2() {
	for i := 0; ; i++ {
		hour := i / 3600
		minute := i/60 - 60*hour
		seconde := i - 3600*hour - minute*60
		fmt.Print("\033[H\033[2J")
		fmt.Println("Il est " + strconv.Itoa(hour) + "h" + strconv.Itoa(minute) + ":" + strconv.Itoa(seconde))
		time.Sleep(time.Second / 1000)
	}
}

func chrono3() {
	for {
		for hour := 0; hour < 24; hour++ {
			for minute := 0; minute < 60; minute++ {
				for seconde := 0; seconde < 60; seconde++ {
					fmt.Print("\033[H\033[2J")
					fmt.Println("Il est " + strconv.Itoa(hour) + "h" + strconv.Itoa(minute) + ":" + strconv.Itoa(seconde))
					time.Sleep(time.Second / 100000)
				}
			}
		}
	}
}
