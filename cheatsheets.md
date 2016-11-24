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
[(top)](#cheatsheets)

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
[(top)](#cheatsheets)

Statements are the instructions that tell Java what to do.  Here's one that prints something
to the screen:

```java
		System.out.println("What do you call a sleeping bull?  A bulldozer!");
```

Statements end with a semi-colon (`;`).

### variables
[(top)](#cheatsheets)

If you get hold of something in Java and want to do something with it later, you need to have some sort of "handle" that will let you hang on to it for as long as you need.  What you need is a variable:

```java
int age = 10;
``` 

A variable has a name, like `age` above, and a value, like `10`.  You also have to say what the _type_ of the variable is. The example above has type `int`, which is short for "integer" (0, 1, 2, 3...).  This means you can keep integers in `age`, but not things of other types, like "Strings" (text messages).  `age = "twelve"` won't work.

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
[(top)](#cheatsheets)

If you want to maybe do something or maybe not, depending on whether something else is one way or another, well...  the clue is at the start of the sentence; you need an `if` statement:

```java
if (line.equals("who's there?")) {
	System.out.println(getSetup());
	line = reader.readLine();
	System.out.println(getPunchline());
}
```
This tests `line.equals("who's there?")`, which is called the _condition_.  A condition is anything that gives you a true/false answer. This one checks whether or not the string referred to by `line` is the message "who's there?".  If it is (the condition is true), then Java does all the statements between the `{` and `}` above.  If it's not (the condition is false) then Java skips all those statements and carries on with whatever comes after.

Check out how this is used in the Knock Knock [example](https://github.com/coderdojobelfast/java/blob/master/jokebot/src/com/coderdojobelfast/jokebot/KnockKnock.java#L55).


### `for`
[(top)](#cheatsheets)

Say you need to do something again and again until you've finished. In programming, this is called a "loop" because you go round and round doing the same thing until you know you can stop. There are various ways of doing this in Java, and one of them is called `for`.

One of the first things we looked at in Minecraft was creating a herd of pigs:
```java
me.chat("Here come the pigs ");
for (int i=0 ; i < 10 ; i++) {
  spawnEntityLiving(loc, EntityType.PIG);
}
```

A `for` loop has three parts - one to say how to start the loop, one to say when to stop it, and one to say what to do each time round.  These are the three bits between the `(` and `)`, separated by `;`s.

The loop above gets going with `int i=0`.  This is just the same as in [variables](#variables). It creates a variable, `i`, which will contain integers, and sets its value to `0`. Next the `i < 10` tells Java to keep going as long as the value in `i` is less than 10. We'd better remember to change `i` as we go round the loop or it will never stop. So...  ...the last bit, `i++` says what to do each time round the loop. `i++` is just shorthand for "add one to `i`". You could have written `i = i + 1`.

So the first time round the loop, `i` is 0, which is less than 10, so Java runs the statements between the `{` and `}` and spawns a pig.  Then `i++` adds one to `i`, which becomes 1. Now the loop goes round again, and `i` is still less than 10, so it spawns another pig and adds 1 to `i` again.  This keeps up until `i` becomes 10. This time when Java checks `i < 10` it decides that `i` isn't less than 10 (it's equal to it), so it stops there and goes on to the next thing after the `for`.

There's another variation on `for` in the bit on `arrays`.

### `while`

Here's another way to do a loop. It's simpler than `for`, and it's called `while`.

It basically just keeps going round the loop until its condition isn't true any more. Here's one from our `ArrayAddMoreBlocks` plugin:

```java
    while (towerBase.getY() < towerLoc.getY()) {
      setBlockAt(towerBase, BlockType.Air);
      logger.info("Clearing block at " + printLoc(towerBase));
      towerBase.setY(towerBase.getY() + 1); // go up one each time
    }
```

The loop keeps going round so long as the "y" coordinate of `towerBase` is less than the "y" coordinate of `towerLoc`.  Inside the loop we are adding one to the "y" coordinate of `towerBase` each time round the loop.  Eventually the coordinate is the same as the "y" of `towerLoc`, so it's not less than it any more, and the loop finishes.

### methods

### classes

and objects, instances

### arrays
mention `for (T t : W)`.

### lists

### maps



## Minecraft bits

###  plugins 

### commands
 
### locations
 
### set blocks 

### teleport 

### spawn 


 
 