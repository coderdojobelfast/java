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
A Java program has a starting point called `main`.


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
 
This creates a new object that is a Knock Knock joke, and remembers it in the variable `joke`. `joke` has type `KnockKnock`, so it is only good for holding knock-knock jokes; no puns, shaggy dog stories or people walking into bars.


### `if`

If you want to maybe do something or maybe not, depending on whether something else is one way or another, well...  the clue is at the start of the sentence; you need an `if` statement:

```java
if (line.equals("who's there?")) {
	System.out.println(getSetup());
	line = reader.readLine();
	System.out.println(getPunchline());
}
```
This tests `line.equals("who's there?")`, which is called the _condition_.  A condition is anything that gives you a true/false answer. This one checks whether or not the string referred to by `line` is the message "who's there?".  If it is (the condition is true), then Java executes all the statements between the `{` and `}` above.  If it's not (the condition is false) then Java skips all those statements and carries on with whatever comes after.

Check out how this is used in the Knock Knock [example](https://github.com/coderdojobelfast/java/blob/master/jokebot/src/com/coderdojobelfast/jokebot/KnockKnock.java#L55).


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


 
 