# Ychat

You will need to create a public repository with the name `YChat`

## Notions
* [Golang Documentation : net](https://pkg.go.dev/net)

## Objectives

This project consists in creating a local chat that allow :
* Comunication in a general chat to talk with all connected users
* Comunication in a private chat to talk with one selected user
* Recognize who's chatting
* Display who's join the chat
* Display all connected users
* Mute users

## Socket

In order to comunicate with differents users you will implement a socket.  
A socket is a TCP-based protocol for real time and connexion with a server and multiple clients.
Sockets are popular for application where we need to send data at any time from either directions like :
* Chat clients
* social network
* Multiplayer games
* Authentification system

## Instruction
### Server side
Write a program able to  : 
* Receive all the local TCP conexion 
* Handshake the conexion
* Resend messages from all
* Send all connected users

### Client side
Write a program able to :
* Take your name
* Take the server IP
* Connect to the server
* Send message to the chat
* Mute people
* Receive all connected users  
  
![Socket Sequence Diagram](https://i.imgur.com/93wpfnu.png)

## Connexion
* First start the server side. He will give you his IP adress
* Start the client side
* Enter your name
* Enter the server IP

