Little Printer Image Publication
================================

This here's an application, written in Camping, to serve a specified
image to BERG Cloud when requested for printing on a Little Printer.
The code only serves on Mondays, but, with a little elbow grease, you
can make it serve any day, or every day

Things you'll need to use it:
==============
Camping
Ruby
A remote image server (Github pages works swell)
Your publication in image format
Hands, or at least stumps of some sort


Configuring it:
===============
Fill out the variables

$currentImg
===
The filename including extension of the image you want to serve
when the server requests an edition

$mgHostUrl
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
