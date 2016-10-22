## 1. Intro - Jokebot
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
* ArrayOfBlocks - what if we didn't want all cakes in our tower? arrays
* ArrayAddMoreBlocks  lists
* NamedSigns maps

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
