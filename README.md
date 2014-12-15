NeuronRobotics.github.io
========================

The Website for the Bowler System

## How this thing works ##
* The content directory will become the root of the website.
  - content/foo.md will become http://domain.com/foo/
  - content/folder/thing.md will become http://domain.com/folder/thing/
  - content/folder/image.jpg will become http://domain.com/folder/image.jpg
  - ...etc
* the script takes all the .md files, shoves them into templates and hosts them
* some files/folders have special metadata that the script used to populate the front page

## Adding A Tutorial ##
A tutorial consists of a *Folder* in the *Content Directory* with one `index.md` file containing the tutorial info and multiple other `.md` files containg the steps.

Here is an example
```
content/
  my-new-tut/
    index.md
    foo.md
    bar.md
    baz.md
    image1.jpg
    image2.jpg
```

The `index.md` describes a tutorial and looks like this
```
---
tutorial: true
title: "My Simple Tutorial"
order: 2
image: foo.jpeg
---
[tutorial description]
```
* `tutorial: true` markes this folder as a tutorial. if omitted it will be omitted from the tutorials page
* `title: "some string"` tutorial title. will be displayed on tutorials page
* `order: #` defines the order in which it will apear on the tutorials page. smaller numbers float to beginning of list. you can have duplicate numbers or skipped numbers or negative numbers.
* `image: file.jpeg` the image associated with the tutorial that will be displayed on the tutorials page. if omitted a plaeholder image will be used. image should be in the same directory as the index.md file
* `tutorial description` The text for the tutorial that appears after the image and before the list of steps on the tutorial page


The `*.md` content files look like this

```
---
title: "my step"
step: 2
layout: post
---
[after this point, this is the content of the tutorial in markdown]
## this is a h2 title ##

this is a paragraph

1. this
2. is
3. a
4. ordered list

... etc/

```

* `title: "some title"` the name of the current step
* `step: #` Same as menu order smaller steps come sooner.
* `layout: post` sets the page layout. should always be post for steps.

## Adding Normal Pages ##
not everything has to be a tutorial, it can be a page.

example
```
not-a-tutorial/
  not-a-step.md
  random-image.jpg
```

The tutorial logic will ignore anything without the tutorial meta data and just put em in as pages

You can still use metadata though. like give it a title, set a layout other then default by adding a frontmatter section

```
---
title: This is just a vanilla page
layout: myawesometemplate
---
## just a normal page ##

nothing to see here

1. just
2. really
3. normal
4. seriosuly
```

## Menus ##

To add a page (or tutorial) to the menu bar use these tags
``` markdown
menu: true
menuorder: 0
menuname: "Home"
```
* `menu: true` will cause the page to get put into the site's main nav menu
* `menuorder: #` is used to sort the menu. if omitted the item will be placed last
* `menuname: "Name"` is the label for the menu item to be used in place of the page title. If title is omitted too it will be the file name.



