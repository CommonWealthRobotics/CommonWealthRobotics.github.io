NeuronRobotics.github.io
========================

The Website for the Bowler System

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

The `index.md` file looks like this
```
---
tutorial: true
title: [tutorial title]
order: [order they pop up on the page, higher number pops up later.]
image: [  tutorial image filename. image must be in same 
          directory as tutorial and is optional. if no image is provided a placehodler will be generated]
---
[tutorial description]
```

The `*.md` content files look like this

```
---
title: [step title]
step: [the step order, smaller numbers come first]
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
