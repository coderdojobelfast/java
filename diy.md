## Do it yourself!

You can get all you need to do the exercises from the Java room at home right here.  It 
does require a bit of work, but all will be explained below...

The basic idea is that you download the file `setup.bat` onto your PC's desktop, and run it. Get it from [here](https://raw.githubusercontent.com/coderdojobelfast/java/master/setup.bat), right-click and choose the option to save it to your desktop. (You will need to make a small change to it before you run it, see below.)  When you run it, it takes care of downloading all you need from the Internet, and unpacking it for you. It will take a couple of minutes, and half way through it will prompt you 'Press any key to continue'.  Just press the Enter key when it does.

It creates the following files and folders on your desktop:

* `shell.bat` (and `sh.exe`) `shell.bat` runs the command window you use to do the 
Java builds.  (It uses `sh.exe` but you don't have to run that yourself.)   Little
helpful program files like this are known as "scripts".
* `code`  This is the folder with the Java plugins from our book.
* `server` This is the folder with the Minecraft server.


Of course you'll also need Minecraft (get it [here](https://minecraft.net/en/download/)), and your own Minecraft account (sign up [here](https://minecraft.net/)).

We are using Eclipse to edit our code (get the latest [here](https://eclipse.org/downloads/)).

Finally, you will need the developer version of Java (called the "JDK", for Java Development Kit) installed on your PC. Get it [here](http://www.oracle.com/technetwork/java/javase/downloads/index.html), accept the licence terms and follow the install instructions. 
Take note of where it says it installs Java, you'll need it below.

### Getting it working

Now unfortunately there is a little bit of work required to make the scripts you need work.

The script `setup.bat` has the following at line 6: 

    @set PATH=%PATH%;C:\Program Files\Java\jdk1.8.0_77\bin
    
This "PATH" tells `setup.bat` where to find Java. The location above, `C:\Program Files\Java\jdk1.8.0_77\bin`, is right for the Java room in Belfast Met, but will be different for you when you have installed Java.  You'll need to edit the file with Notepad++ or another good text editor (Notepad will do at a pinch!) and fix the location.
Change `C:\Program Files\Java\jdk1.8.0_77\bin` to the location where the Java installer put your JDK. If you didn't take note where this was, you should be able to find it in `C:\Program Files\Java`, or maybe `C:\Program Files (x86)\Java\`. Leave the `bin` on the end! For you the line may look like:

    @set PATH=%PATH%;C:\Program Files\Java\jdk1.8.0_111\bin


Once you have run `setup.bat` and downloaded everything, you have to make the same change to the PATH in the file `shell.bat`. Again, edit it with Notepad++ and fix the PATH.
Make sure it has just two lines, like this (only with your fixed location for the Java): 

    @set PATH=C:\Program Files\Java\jdk1.8.0_77\bin;%PATH%
    @c:\Windows\system32\cmd.exe /c %USERPROFILE%\Desktop\sh.exe -l
    

### That's it!

You are now ready to open, build, and run the examples just like on Saturday mornings.

