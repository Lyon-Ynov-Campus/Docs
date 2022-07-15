# Exercise - Project Management

### Objective

You learned several techniques to manage a project. Now you have to use them to realize the exercise below.
<br>

### Project definition

Set up a group of 4 people.
We give you the file **main.go** with the code below :
```
package main

import (
	"github.com/01-edu/z01"
)

func main() {
    tab := []int{45, 12, 24, 4, 1}
	tab = SortTab(tab)
	tab = CalculateTab(tab)
	tab = SquareTab(tab)
	tab = PrimeTab(tab)
	for _, k := range tab {
		if k == 7 {
			z01.PrintRune('7')
			z01.PrintRune('\n')
		}
	}
}
```

You have to do the 4 functions below, dividing the tasks between you :
> - SortTab --> Function that takes as parameter an array of integers and returns this array sorted in ascending order.
> - CalculateTab --> Function that takes as parameter an array of integers and returns an array of all these integers modified with the function f(x) = 2(3x+4x) with x each integer of the array as parameter.
> - SquareTab --> Function that takes as parameter an array of integers and returns an array of the square roots of each of these numbers.
> - PrimeTab --> Function that takes as parameter an array of integers and returns an array only with the prime numbers of this array.

The main function must return the number **7**. If it's not the case, the functions aren't correct.
<br>

### Definition and distribution of tasks

Now that you've defined your project, define the tasks. Create a [trello](https://trello.com/) by reproducing the model that we presented to you.
Divide the different tasks between you.

<br>

### Organization of the github repository

Now that you've divided the tasks, create your [github](https://github.com/) repository, then add each group member as a collaborator. 
Then, organize your repository with the Git Workflow recipe.
As a reminder, this is an example of Git Workflow organization :

![git workflow](https://i.imgur.com/qQVJStx.png)

<br>

### Finish

If you've gathered all your functions in the main branch, and after testing them with our **main** function, call a mentor to validate or not.