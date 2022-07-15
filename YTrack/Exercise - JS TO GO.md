# Exercise - JS TO GO

### Objective

For the Forum project, you need to know how to request api route with JS/GOLANG.
<br>

### Restrictions

Before you start the exercise, please note that you are only allowed to use the packages authorized for the **Forum** project

### Exercise

In a HTML page, you will have a form that have a <textarea> and a submit button. When you click on the button, you will get the informations of this form and stock them in an array of a **POST** structure.
In order to do this, you will use a route named **/addpost** created previously in GO.
This is the **POST** structure you must use : 

```
type Post struct {
    ID int
    Content string
}
```

Then, you have to create a route named **/getposts** which give you the array of all posts. 
You have to fetch this route in **JS** and display all of them in several <div> (like a template in golang)
<br>

### Documentation

You need absolutely these **ressources** below to succeed this exercise.

> - [Vidéo Atelier GO to JS - JS to GO](https://www.youtube.com/watch?v=Gjv2qMaKDFI&ab_channel=LyonYnovCampus)
> - [fetch js](https://developer.mozilla.org/fr/docs/Web/API/Fetch_API/Using_Fetch)
> - [ioutil](https://pkg.go.dev/io/ioutil)
> - [net/http](https://pkg.go.dev/net/http)

<br>

### Result

This is the result you should have :

![result tp js to go]()

### Finish

After completing the exercise, call a mentor to validate it or not !
