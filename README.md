# Projia [0.1.0]
***Project generator using I.A.'s libraries.***

&nbsp;

&nbsp;

Welcome to projia !

Your new project generator that will save you time !
- First let's see what projia is able to do for now.
- Secondly we will see how you can CUSTOMIZE your own project generator.

&nbsp;

&nbsp;

## Overview

In some languages like C, C++, java... it can be a bit redundant to
create all the necessary files & folders for each project. Moreover, the
integration of some libraries and their dependencies can make the thing
harder and longer.

Projia has been made to give a simple and fast way of creating new projects
in these languages with all the stuff you might need around (src folder,
README, makefile...).

**Example :** You want to create a Swift project that can use a sort of network ?
```bash
     projia --swift mySwiftProject network
```

And there you go !

Possible questions :

- But what kind of templates are used ?
- And Why using only I.A.'s libraries ? Can I use mine ?
- Is that possible to create my own implementation of a language ?
  Or multiple implementations of the same language ?

Answers to these questions are below.

&nbsp;

&nbsp;

## I] Installation - Uninstallation

### Requirements :
- Linux/GNU operating system.

- Bash tools : https://github.com/iasebsil83/Bash_Tools

That's all you need.

### Installation
To install projia :
```
    git clone https://github.com/iasebsil83/Projia
    ./Projia/install
```

### Uninstallation
To uninstall projia, remove "Projia" section in file ~/.bashrc and then :
```bash
    rm -rf ~/.projia
```

&nbsp;

&nbsp;

## II] Templates

Project templates are sorted by language and stored at :
```bash
~/.projia/<language>/default/
```
(One folder per language)

All the files & folders existing in the ***default*** folder will be copied
at each new project creation.

So you can customize your project generation as you want by modifying the
folders & files inside the "default" directory. Mind that you can also
define some custom variables that you can use in your template files using
the syntax : \_\_myVariable\_\_

They will be replaced by the text you have set.

&nbsp;

There is 2 types of variable :
 - **command** : Defined when a project is created (project name, language...)
 - **global**  : Defined in a configuration file. (pseudo, copyright...)

Command variables are :
 - **\_\_project_name\_\_**  (project name given by the user)
 - **\_\_language\_\_**      (selected language)
 - **\_\_creation_date\_\_** (format : "DD MMM YYYY")
 - **\_\_creation_hour\_\_** (format : "HH:mm:ss")

Global variables are configurable at :
```bash
~/.projia/globvars.bash
```

Check out the existing templates to get inspired on how to make yours.

&nbsp;

&nbsp;

## III] Libraries

Projia has a bunch of libraries available in a few languages that
are located in :
```bash
~/.projia/<language>/lib/
```

These libraries are utility libraries for some basic stuff (file
management, network use...) and are quite easy to manage. They are not
required for the use of a feature, but recommended for an easier
maintainability of the code.

All that stuff has been made by myself (I.A.) but of course you can
add your own libraries inside the ***lib*** folder. As soon as you do it,
they will be automatically accessible via the command line when
creating a new project in the corresponding language.

&nbsp;

**Adding a library :**

To add a library in a language, just follow these steps :
 - Create a folder in ***~/.projia/\<language\>/lib/\<my_lib\>***
 - Add all your library files inside.
 - If this library requires another one to work, add another file named **.depend** as well in which you will give the list of all the required libraries names (One per line).

**WARNING :** You may have seen that the libraries implemented by default are linked to an online git repository.<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; That is NOT REQUIRED at all, though recommended.<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; All the files given in ***~/.projia/updater*** will be modified by : *** projia -u ***.

That's it for libraries.

&nbsp;

&nbsp;


## IV] Add a new language

It is possible to add as many languages as possible in projia using command :
```bash
projia --add <language>
```

Make sure to use a language name that can be applied to a file or
folder because adding a language will create a language directory in ***~/.projia/***.

For instance, the C language has been created in projia like this :
```bash
projia --add C
```

Yes it was that simple.

&nbsp;

&nbsp;

## V] Little tips

You might want to have multiples implementations of the same language
so here is a solution : Add the same language under different names !

**Examples :**
```bash
projia --add C_standard
projia --add C_mylibs
projia --add C_otherlibs
```

Then, you can configure ***~/.projia/updater*** to set which lib will be set
into which language.

When adding a language, you may see that an empty makefile is generated by
default. It can be a bit boring and even very long to write your makefile
by hand. I highly recommend you to use a makefile generator if you want to
handle big projects.<br>(Notice that BashTools includes one : **makegen**)

&nbsp;

&nbsp;

That is all for this tool, hope you will enjoy !

&nbsp;

&nbsp;

Contact     : i.a.sebsil83@gmail.com<br>
Youtube     : https://www.youtube.com/user/IAsebsil83<br>
GitHub repo : https://github.com/iasebsil83<br>

Let's Code ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;By I.A.
