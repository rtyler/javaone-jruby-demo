# JRuby/Java demos

## About this repo

This repository is a collection of demos and scripts



## Demos

 * `turtles/` - demonstrates embedding a new `Ruby` runtime environment within
   JRuby to provide environment separation
 * `ascii-table-from-jar.rb` - taking a random jar file from the internet and
   putting it to use within JRuby
 * `jfiglet-hello-world.rb` - using
   [JFiglet](https://github.com/lalyos/jfiglet) to say hello
 * `anonymous-classes.rb` - simple little demo using `java.lang.Thread` to
   demonstrate automatic anonymous class conversion from blocks in JRuby


### Using Pry + RDoc

In order to use RDoc from within the Pry interpreter, you will need to run
`rdoc-data --install`. Then from within Pry you can call `ri`:

```
[1] pry(main)> ri String.count
String.count

(from ruby core)
------------------------------------------------------------------------------
  str.count([other_str]+)   -> fixnum

...
```
