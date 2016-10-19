#JQuery Study:
##Release 0: Make a Plan (10 mins)
###Resources:
1. *Jon Duckett's Javascript & JQuery*
⋅⋅* Read through Duckett's and complete exercises
⋅⋅*Put this into a real world JQuery project 
* *W3Schools*
* *http://jqfundamentals.com/*

###To do:
- How to install/include JQuery?
- What is JQuery?
- How is it implemented?
- What are the benefits/can it do?
- Create project with JQuery

###Key pointers:
- Add event listeners for clicking, hovering and other user actions
- Add or remove CSS classes in response to events
- Make elements fade in/out, slide up/down, transition in ways
- Grab values from user input forms
- ... more

####Reminders:
* Take some breaks
* Revisit notes

##Release 1: Study Up (2 hours)
####How to install/include JQuery?
Include a copy of jquery in the project directory, then include it in the html document. 

####What is Jquery?
Fast and concise "write less, do more" JS library. Purpose is to make it easier to use JS on your website. 
JQuery simplifies a lot of the complicated things from JS, like AJAX calls and DOM manipulation and takes a lot of common tasks that require many lines in JS to accomplish, and does them in a single line of code. 
The jQuery library contains the following features:
- HTML/DOM manipulation
- CSS manipulation
- HTML event methods
- Effects and animations
- AJAX
- Utilities

####- How is it implemented?
```//jQuery syntax:
var listItems = jQuery('li');
var listItems = $('li');
// need to expose the jQuery to the global obejct if use the $:
//will find this at the end to use the $ instead of typing jQuery everytime:
window.jQuery = window.$ = jQuery;
```

You create a new jQuery object when you call the $( ) function and pass a selector to it.
Since this is something you'll find yourself doing a lot, there's a shorthand method for this if you prefer — the $() function does double duty as an alias for $(document).ready() if you pass it a function:
```
$(function() { == $( document ).ready(function( ) ...
```
JQuery selectors: 
```
$( '#header' ); // select the elements with id="header"
$( 'li' );      // select all list elements
$( 'ul li' );   // select list items that are in unordered lists
$( '.person' ); // select all elements with class="person"
$(this).hide(); hides all the current html elements
```

JQuery events: 
jQuery click()
jQuery dblclick()
jQuery mouseenter()
jQuery mouseleave()
jQuery mousedown()
jQuery mouseup()
jQuery hover()
jQuery focus() and blur()