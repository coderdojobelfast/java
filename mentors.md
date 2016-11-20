# Mentors' notes

Here are the session outlines for the Java room.


## 1. Intro - Jokebot

Jokebot is code for the first session, to get familiar with Eclipse and learn some basic Java by writing a joke-telling robot.

Run through examples in order:

### TellJoke

Introduce simple Java 'hello world' style program - skip over structure for now and describe how to produce output.

### AskJoke

Add concepts of input, variables, `if` statement.

### KnockKnock

Dive into OO concepts a bit more deeply.  Introduce `class` and object concepts, member variables, methods.

Why bother with classes?  Explain usefulness for code re-use, illustrate with main.

### JokeBot

Finally we can write our joke-telling robot, re-using the knock-knock code. Lists, `for` loops.  Make a note of the encapsulation of the joke code, the JokeBot code doesn't know how the joke works and doesn't care.


Intro to Eclipse.

Intro to Java.

* TellJoke - `main`, output.
* AskJoke - input, variables, `if`.   Eclipse code completion.
* KnockKnock - a class with members; methods; instances.
* JokeBot - `List<>`, `for`, code re-use.

## 2. Basic Plugins, Minecraft API
Plugins.

Inheritance - code re-use.

* Change Eclipse workspace to Desktop/code.
* go straight for the HelloWorldEZ plugin (but mention the difference)
* Build cycle:
 * `shell`
 * `cd Desktop/code`
 * `cd HelloWorld`
 * `./build.sh`
* Run CanaryMod server
* Minecraft client - localhost server
* `/hello`

PlayerStuff

* Minecraft API
* Build Path - add jars `server/CanaryMod.jar` and `server/lib/EZPlugin.jar`.
* Challenge (p77) - add `boolean` for whether player is sleeping and display appropriate message.

Try adding pigs!
```
me.chat("Here come the pigs ");
for (int i=0 ; i < 10 ; i++) {
  spawnEntityLiving(loc, EntityType.PIG);
}
```

## 3. More on Loops
* Squidbomb (p76) - `for` loop again, but introduces Locations;
change the `for` to a `while` to introduce that.
* LavaVision (p84) iterators - block iterator
* CakeTower (p93) - scope/shadowing; idea of 'debugging'; setting blocks;
Fix the code!

## 4. Arrays, Lists and Maps
* ArrayOfBlocks - what if we wanted more than just cakes in our tower? 

Arrays can store different blocks; BlockType[] = any value of BlockType; fixed length.

Task - reverse the tower.

NOTE - OakWood is deprecated - see compilation warning.  Change it to something else.
```
    for (int i=towerMaterials.length; i > 0 ; i--) {
      loc.setY(loc.getY() + 1); // go up one each time
      setBlockAt(loc, towerMaterials[i - 1]);
    }
```


* ArrayAddMoreBlocks  lists

More flexible than arrays as not fixed length; add and remove as you please.

`arrayaddmoreblocks` adds three blocks each time you call it. Note two separate variables & objects 
at (1) and (2).

Task - change the building materials, add a couple more.

* NamedSigns maps
What maps look like - people's favourite TV shows:
```
            +---------------+
"tom"  ---->| Dr. Who       |
            +---------------+
 
             +----------------+
"jane"  ---->| The Musketeers |
             +----------------+
 
             +----------------+
"bob"  ----> | Dangermouse    |
             +----------------+

```

Named signs.
Use like `signs new one` and `signs set one`.
Explain `NamedSigns` uses a map of names to _locations_ of signs. You use `World.getTileEntity` to
get the sign itself. 

Challenge - you can have up to four lines on a sign. Update the `setSign` method to take 
up to four words and put them on successive lines.

Solution below. Note the arithmetic around `words = args.length -3`, using example

```
i:                    0    1   2   3
        0    1   2    3    4   5   6
args:  set sign one hello how are you
```

Solution:
```
  private void setSign(Player me, String [] args) {//(6) 
    String name = args[2];
    if (!signs.containsKey(name)) {
      // No such named sign
      me.chat("No sign named " + name);
      return;
    }
    Location loc = signs.get(name);
    World world = loc.getWorld();
    Sign sign = (Sign)world.getTileEntity(world.getBlockAt(loc));//(7)
    int words = args.length - 3;
    for (int i = 0; i < words && i < 4; i++) {
        sign.setTextOnLine(args[i + 3], i);
    }
    sign.update();
  }
```

## 5. Spawning and Listening
* Flying Creeper
* Back plugin - Another way to invoke plugins - listen to events.
Just introduce the concept and let them try running it
but don't bother with the details of how the plugin works.
* Firebow - write our own plugin entirely from scratch
  * new class
  * copy pattern from Back

## 6. Scheduling
* Flaming Cows




