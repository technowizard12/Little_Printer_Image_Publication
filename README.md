Little Printer Image Publication
========================================================================

This here's an application, written in Camping, to serve a specified
image to BERG Cloud when requested for printing on a Little Printer.
The code only serves on Mondays, but, with a little elbow grease, you
can make it serve any day, or every day

Things you'll need to use it:
==============
Camping,
 Ruby,
, A remote image server (Github pages works swell)
, Your publication in image format, 
Hands, or at least stumps of some sort


Configuring it:
===============
Fill out the variables

$imgFileExtension
===
The file extension of your image files on the remote server

$imgHostUrl
===
The base url where the image lives. e.g. http://yourname.github.com

$title
===

Purely decorational. The title of all the served images
 
$sampleImg
===
the name of the sample image

$iconImg
===
the name of the icon image


Deploying should be easy. Everything's set up for Heroku, but
you can change that, if you like. Heroku's kind of annoying,
sometimes.


Configuring
======================================================

1. Install ruby, camping, and markaby. Fill out your global variables.

2. Place the images to be served in the root of your remote server.

3. Profit!

(4. You might want to read the comments of the code, just until I get
proper docs up)
