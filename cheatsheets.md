# Cheatsheets

Java | | | |
--- | --- | --- | ---
[programs](#programs) | [statements](#statements) | [variables](#variables) | [methods](#methods)
[classes](#classes) | [if](#if) | [for](#for) | [while](#while) 
 [arrays](#arrays) | [lists](#lists) | [maps](#maps)
 
 
 Minecraft | | |
 --- | --- | ---
 [plugins](#plugins) | [commands](#commands) | [locations](#locations) 
 [set blocks](#set-blocks) | [teleport](#teleport) | [spawn](#spawn) 

## Java bits

### programs

`TellJoke` is a simple Java program.  All Java code lives in a [`class`](#classes). 
A Java program has a starting point which is a [method](#methods) called `main`.


```java
package com.coderdojobelfast.jokebot;

/**
 * This is a comment.  It doesn't do anything, but it's useful for describing what the code does.
 */
public class TellJoke {

	public static void main(String [] args) {
		System.out.println("What do you call a sleeping bull?  A bulldozer!");
	}
}
```


### statements

Statements are the instructions that tell Java what to do.  Here's one that prints something
to the screen:

```java
		System.out.println("What do you call a sleeping bull?  A bulldozer!");
```

See how it ends in a semi-colon?  

### variables

If you get hold of something in Java and want to do something with it later, you need to have some sort of "handle" that will let you hang on to it for as long as you need.  What you need is a variable:

```java
int age = 10;
``` 

A variable is a reference to some object or value that you got from somewhere (or made yourself).  It has
a name, like `age` above, and a value, like `10`.  You also have to say what the _type_ of the variable is. The example above has type `int`, which is short for "integer" (0, 1, 2, 3...).

Java has a few simple types like numbers and letters (e.g. `char c = 'X'`), but lots of the time variables
refer to objects that have been made from [classes](#classes).  Even simple things like text messages are objects:

```java
String myMessage = "Hello Minecrafters";
```

or in our "KnockKnock" joke [example](https://github.com/coderdojobelfast/java/blob/master/jokebot/src/com/coderdojobelfast/jokebot/KnockKnock.java#L63) we have 

```java
KnockKnock joke = new KnockKnock("H", "Bless you!");
```



### `if`

### `for`

### `while`

### methods

### classes

and objects, instances

### arrays

### lists

### maps



## Minecraft bits

###  plugins 

### commands
 
### locations
 
### set blocks 

### teleport 

### spawn 


 
 