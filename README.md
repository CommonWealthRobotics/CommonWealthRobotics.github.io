CommonWealthRobotics.github.io
========================

The Website for the Bowler System

http://CommonWealthRobotics.github.io/

Build monitor:

https://travis-ci.org/CommonWealthRobotics/CommonWealthRobotics.github.io

## How this thing works ##
* The content directory will become the root of the website.
  - content/foo.md will become http://domain.com/foo/
  - content/folder/thing.md will become http://domain.com/folder/thing/
  - content/folder/image.jpg will become http://domain.com/folder/image.jpg
  - ...etc
* the script takes all the .md files, shoves them into templates and hosts them
* some files/folders have special metadata that the script used to populate the front page

## Forking Repo and setting up travis ci ##
see this link for updating .congif.yaml with a new token. https://gist.github.com/willprice/e07efd73fb7f13f917ea

## Local Compile ##
```
  git clone https://github.com/CommonWealthRobotics/CommonWealthRobotics.github.io.git
  sudo apt-get install ruby2.5-dev  bundler
  cd into CommonWealthRobotics.github.io
  bundle install
  bundle exec nanoc view & bundle exec guard
  
  For mac:
  Install xcode
  Install macports
  sudo port install ruby19
  sudo port install rb19-bundler
  bundle-1.9 install
  cd CommonWealthRobotics.github.io
  bundle-1.9 exec nanoc view && bundle-1.9 exec guard


```
To compile the source locally and see the rendered changes, run:
```
 bundle exec nanoc view & guard
```
and navagete to 

http://localhost:3000/

to view the local build. As you make changes, it will automatically compile continously. 

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

## Forking the repo and setting up travis.ci ##
You need to define two variables. `GH_TOKEN` and `GIT_NAME` in your project's travis-ci settings.
Your `GIT_NAME` should match the username of the account you used to generate your github token and your `GH_TOKEN` should be generated as per these instructions. https://help.github.com/articles/creating-an-access-token-for-command-line-use/

I’ve got a bunch of asciidoc files inside of https://github.com/MVSE-Outreach/resources that I want to build to save people from having to install asciidoctor or pandoc to regenerate these files.

First I go to https://github.com/settings/applications and generate a token that I call outreach-resources with the permissions public_repo. This secret token needs to be stored somewhere, I don’t want it to be revealed inside my .travis.yml or on the travis build server. Travis supports encrypted environment variables, so I run the command 
```
echo GH_TOKEN=my_github_token | travis encrypt --add 
```
where you’d replace my_github_token with the access token generated earlier; this command stores the encrypted github token inside the .travis.yml file.

Now that I’ve got an access token available on travis we can write the script that will push things back to github (checkout push.sh). I set up the username and email address of the git user on travis, checkout the branch I wish to push to, add the files I want and commit using the environment variable $TRAVIS_BUILD_NUMBER which helps me identify which commits correspond to which builds (totally optional). I finally push this commit back to the repository which takes the form: https://${GH_TOKEN}@github.com/<user_name>/<repo_name>.git, here GH_TOKEN is substituted inside the build server which acts as a username to the repository with full commit rights!

Travis’s build process is instructed by a file inside your repository named .travis.yml which contains information on the language of the repository, build comamands, dependencies, post build hooks etc. In my YAML file you can see I’m using the hooks before_install, script and after_success, all of which take a command, or a list of commands and execute them. You’ll want to keep the push.sh commands outside of the YAML file (i.e. don’t get rid of push.sh and put them all in after_success as ${GH_TOKEN} won’t be substituted).

## Updating download links ##

On the new landing page the download links come from the frontmatter in the `index.md` file.
Update them by comitting a new index.md file with updated links to this repo.
```
winInstaller: "https://github.com/CommonWealthRobotics/BowlerStudio/releases/download/*.*.*/Windows-nrdk-*.*.*.exe"
linInstaller: "https://github.com/CommonWealthRobotics/BowlerStudio/releases/download/*.*.*/Ubuntu-nrdk-*.*.*.deb"
macInstaller: "https://github.com/CommonWealthRobotics/BowlerStudio/releases/download/*.*.*/MacOSX-nrdk-*.*.*.zip"
```

