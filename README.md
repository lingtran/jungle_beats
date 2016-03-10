---
layout: page
title: Jungle Beat
---

## Project Overview

Silly sounds that can be played by being backed by a linked list.

### Linked Lists

Linked Lists are one of the most fundamental Computer Science data structures. A Linked List models a collection of data as a series of "nodes" which link to one another in a chain.

In a singly-linked list (the type we will be building) you have a __head__, which is a node representing the "start" of the list, and subsequent nodes which make up the remainder of the list.

The __list__ itself can hold a reference to one thing -- the head node.

Each node can hold a single element of data and a link to the next node in the list.

The last node of the list is often called its __tail__.

Using sweet ASCII art, it might look like this:

```
List -- (head) --> ["hello" | -]-- (link) --> ["world" | -]-- (link) --> ["!" | ]
```
The three nodes here hold the data "hello", "world", and "!". The first two nodes have links which point to other nodes. The last node, holding the data "!", has no reference in the link spot. This signifies that it is the end of the list.

## Learning Goals / Areas of Focus

* Practice breaking a program into logical components
* Distinguishing between classes and instances of those classes
* Understanding how linked lists work to store and find data
* Testing components in isolation and in combination

## Functionality

Exercise the functionality from a Pry session:

```ruby
require "./lib/jungle_beat"
> jb = JungleBeat.new("deep dep dep deep")
> jb.play
=> 4 # also plays the sounds
> jb.append("deep bop bop deep")
=> 4
> jb.all
=> "deep dep dep deep deep bop bop deep"
> jb.prepend("tee tee tee tee")
=> 4 # number of beats inserted
> jb.all
=> "tee tee tee tee deep dep dep deep deep bop bop deep"
> jb.include?("dep")
=> true
> jb.pop(4)
=> "deep bop bop deep"
> jb.all
=> "tee tee tee tee deep dep dep deep"
> jb.count
=> 8
> jb.insert(4, "boop bop bop boop")
=> "tee tee tee tee boop bop bop boop deep dep dep deep"
> jb.find(8, 2)
=> "deep dep"
```

### Internal Structure

A Linked List stores the beats. Each node contains only a single "word"/beat. EAch of the following features for the list can be implemented:

* `append` an element to the end of the list
* `prepend` an element at the beginning of the list
* `insert` one or more elements at an arbitrary position in the list
* `includes?` gives back `true` or `false` whether the supplied value is in the list
* `pop` one or more elements from the end of the list
* `count` the number of elements in the list
* `find` one or more elements based on arbitrary positions in the list. The first parameter indicates the first position to return and the second parameter specifies how many elements to return.
* `all` return all elements in the linked list in order

## Resources

Need some help on Linked Lists? Check out some of the following resources:

* https://www.youtube.com/watch?v=oiW79L8VYXk
* http://www.eternallyconfuzzled.com/tuts/datastructures/jsw_tut_linklist.aspx
* http://www.cs.cmu.edu/~adamchik/15-121/lectures/Linked%20Lists/linked%20lists.html
* http://www.sitepoint.com/rubys-missing-data-structure/
