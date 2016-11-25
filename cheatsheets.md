# Cheatsheets

A quick reminder of some of the things we've seen in the sessions in the Java room.

Java | | | |
--- | --- | --- | ---
[programs](#programs) | [statements](#statements) | [variables](#variables) | [methods](#methods)
[classes](#classes) | [if](#if) | [for](#for) | [while](#while) 
 [arrays](#arrays) | [lists](#lists) | [maps](#maps) | [output](#output)
 [input](#input) | | |
 
 
 Minecraft | | |
 --- | --- | ---
 [plugins](#plugins) | [commands](#commands) | [locations](#locations) 
 [set blocks](#set-blocks) | [teleport](#teleport) | [spawn](#spawn) 

## Java bits

### programs
[(top)](#cheatsheets)

`TellJoke` is a simple Java program.  All Java code lives in a [class](#classes). 
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

A `for` loop has three parts - one part says how to start the loop, one is a test to say when to stop it, and one says what to do each time round.  These are the three bits between the `(` and `)`, separated by `;`s.

The loop above gets going with `int i=0`.  This is just the same as in [variables](#variables). It creates a variable, `i`, which will contain integers, and sets its value to `0`. Next the `i < 10` tells Java to keep going as long as the value in `i` is less than 10. We'd better remember to change `i` as we go round the loop or it will never stop. So...  ...the last bit, `i++` says what to do each time round the loop. `i++` is just shorthand for "add one to `i`". You could have written `i = i + 1`.

So the first time round the loop, `i` is 0, which is less than 10, so Java runs the statements between the `{` and `}` and spawns a pig.  Then `i++` adds one to `i`, which becomes 1. Now the loop goes round again, and `i` is still less than 10, so it spawns another pig and adds 1 to `i` again.  This keeps up until `i` becomes 10. This time when Java checks `i < 10` it decides that `i` isn't less than 10 (it's equal to it), so it stops there and goes on to the next thing after the `for`.

There's another variation on `for` in the cheatsheet on [lists](#lists).

### `while`

Here's another way to do a loop. It's simpler than `for`, and it's called `while`.

It basically just keeps going round the loop, making a test each time, until the test isn't true any more. Here's one from our `ArrayAddMoreBlocks` plugin:

```java
    while (towerBase.getY() < towerLoc.getY()) {
      setBlockAt(towerBase, BlockType.Air);
      logger.info("Clearing block at " + printLoc(towerBase));
      towerBase.setY(towerBase.getY() + 1); // go up one each time
    }
```

This loop's test is `towerBase.getY() < towerLoc.getY()`. The loop keeps going round so long as the "y" coordinate of `towerBase` is less than the "y" coordinate of `towerLoc`.  Inside the loop we are adding one to the "y" coordinate of `towerBase` each time round the loop.  Eventually the coordinate is the same as the "y" of `towerLoc`, so it's not less than it any more, and the loop finishes. 

Watch out - if we forgot to add to the "y" of `towerBase`, the test would always be true, and the loop would never finish!

### methods
[(top)](#cheatsheets)

If you find yourself writing a bit of code that's more or less the same as some bit that you wrote already - then stop!  Having lots of copies of the same code is a Bad Thing, because, if you have to make changes, you have to change lots of places, and it's hard to stay right.  

It's much better to turn that code into a little mini-command of its own, and then use that command in every place where you need it.  Some languages call these mini-commands "functions" or something else; Java calls them "methods".  Methods are so useful that Java insists you put practically all your code in a method (and every method in a [class](#classes)).  The `main` we saw in [programs](#programs) above is a method. We use methods to make the commands in all our plugins. Here's a method from `ArrayOfBlocks`:

```java
  public void arrayofblocksCommand(MessageReceiver caller, String[] args) {
    if (caller instanceof Player) { 
      Player me = (Player)caller;
      buildTower(me);
    }
  }
```

Instead of doing _all_ the work itself, `arrayofblocksCommand` itself uses a "mini-command" (a method) of its own, `buildTower`, which is also inside the `ArrayOfBlocks.java`.

```java
    public void buildTower(Player me) {
        //.... etc, etc. various instructions here!
    }
```

The examples above show how you can give a method some _inputs_ to work with, like `Player me`. A method can also work out some result and give it back to whoever called it, like this simple method to add two numbers. It uses `return` to hand back the result:

```java
    public int addTwoNumbers(int x, int y) {
        return x + y;
    }
```

The `int` (called the "return type") in front of `addTwoNumbers` means that the result of `addTwoNumbers` will always be an `int` (integer) number.  You could use `addTwoNumbers` like

```java
	int sum = addTwoNumbers(2, 3);
	System.out.println("2 + 3 is "  +  sum);
```

which prints out `2 + 3 is 5`.

If you just need your method to do something and don't need a result, use `void` for the return type, and don't put a `return` inside the method (like `buildTower` above).


### classes
[(top)](#cheatsheets)

and objects, instances

### arrays
[(top)](#cheatsheets)

An array is one way of storing data. It's like a long box with a number of compartments in it, and you can store
one thing in each compartment. Here's an array of numbers:

```
+-----+-----+-----+-----+-----+-----+
|   1 |  9  |  44 | 6   |  2  | 99  |
+-----+-----+-----+-----+-----+-----+
```

When you create an array, you have to say how big it is. Once it's made, it can't change size,
and you can't put any more into it once it's full. All the things in the array have to be the 
same type. Here's an array of `int`s:

```java
int [] myNumbers = new int[6];
```

To put something into one of the slots in array you say which slot, with the number of
the slot inside the square brackets.  We saw this in `ArrayOfBlocks`:

```java
    towerMaterials[0] = BlockType.Stone;
    towerMaterials[1] = BlockType.Cake;
    towerMaterials[2] = BlockType.OakWood;
    towerMaterials[3] = BlockType.Glass;
    towerMaterials[4] = BlockType.Anvil;
```
Watch out!  Java starts counting at `0`, so the first slot in the array is `towerMaterials[0]`.

And you can use any item from the array by using the number in brackets again to say which one you 
want, like `towerMaterials[i]` in :
```java
    for (int i=0; i < towerMaterials.length ; i++) {
      loc.setY(loc.getY() + 1); // go up one each time
      setBlockAt(loc, towerMaterials[i]);
    } 
```



### lists
[(top)](#cheatsheets)

Lists are another way to store data, and are a bit like arrays, but the big difference is 
that a list can grow bigger and smaller, unlike an array.  All the things in the list do
have to be the same type, just like arrays. 

Make a list like this, from `ArrayAddMoreBlocks`:
 
```java
  public static List<BlockType> towerMaterials = new ArrayList<BlockType>();
```

The `List<BlockType>` means this list is going to store `BlockType` objects.
Like many things in Java, lists come in different flavours, and `ArrayList` 
is one flavour of list. Add something to the list with, er, `add`, and get it
back out with (you guessed it) `get`:

```java
	towerMaterials.add(BlockType.Glass);
	towerMaterials.add(BlockType.Stone);
	BlockType stoneBlock = towerMaterials.get(1);
````

`get` is for when you know which number of item from the list you want. You can also search through the 
list item by item, doing something with each one, or looking for one in particular.  You could use a
loop like in [for](#for), something like

```java
	for (int i=0;  i < mylist.size() ;  i++) {
	   System.out.println(mylist.get(i));
	}
```

See how you use `.size()` to find the number of items in the list (the length of the list)?

That sort of thing is so common Java even provides a shorthand way of writing the `for` loop,
as we saw in `ArrayOfBlocks`:

```java
    for (BlockType material : towerMaterials) {
      logger.info("Building block at " + printLoc(towerLoc));
      setBlockAt(towerLoc, material);
      towerLoc.setY(towerLoc.getY() + 1); // go up one each time
    } 
```

### maps
[(top)](#cheatsheets)

Maps are another way of storing data that is often handy.  The trouble with arrays is that
to get a value out of an array you have to know where it is in the array in the first place, or
else search through the array until you find it. With lists your only option is to search the list
to find what you want.  

Maps are different.  When you store things in a map they aren't in any particular order
but they all have their own label. If you know the label you can get the thing straight
out of the map at once. Here's a map of three kids' favourite TV shows. If you want to know
 Jane's favourite show, you just supply the label, "jane", and the map will give you the value
 ("Stephen Universe"):.

```
            +---------------+
"tom"  ---->| Dr. Who       |
            +---------------+
 
             +------------------+
"jane"  ---->| Stephen Universe |
             +------------------+
 
             +----------------+
"bob"  ----> | Dangermouse    |
             +----------------+

```


.

Here's what it actually looks like in Java. First we'll create a map. Let's say we already 
have a class called `TVShow` (see more on classes [here](#classes)):

```java
Map<String, TVShow> faves = new HashMap<>();
```
The `Map<String, TVShow>` bit means that the map is going to store `TVShows` and the labels in it are `String`s.
Like many things in Java, maps come in different flavours.  HashMap is one flavour.

Now we add the shows.  The command that does this is called `put`:

```java
faves.put("tom", new TVShow("Dr. Who"));
faves.put("jane", new TVShow("Stephen Universe"));
faves.put("bob", new TVShow("Dangermouse"));
```

Now any time later when someone wants to know Jane's favourite show they use `get` to, er, get 
the show out of the map:

```java
TVShow janesFave = faves.get("jane");
System.out.println("Jane's favourite show is " + janesFave);
```
which prints "Stephen Universe".


### output
[(top)](#cheatsheets)

### input
[(top)](#cheatsheets)

## Minecraft bits

###  plugins 
[(top)](#cheatsheets)

### commands
[(top)](#cheatsheets)
 
### locations
[(top)](#cheatsheets)
 
### set blocks 
[(top)](#cheatsheets)

### teleport 
[(top)](#cheatsheets)

### spawn 
[(top)](#cheatsheets)
 
 
 