# We will create an embedded JRuby instance to provide runtime separation!
#
# More details on embedding JRuby can be found here:
# <https://github.com/jruby/jruby/wiki/DirectJRubyEmbedding>
#
require 'colorize'

java_import org.jruby.Ruby
java_import org.jruby.RubyRuntimeAdapter
java_import org.jruby.javasupport.JavaEmbedUtils

runtime = JavaEmbedUtils.initialize(java.util.ArrayList.new) # Create our runtime
evaler = JavaEmbedUtils.new_runtime_adapter # Create our evaluator
# We want our pretties inside the embedded runtime too!
evaler.eval(runtime, <<-END
require 'colorize'
puts
            END
)

# Appending 'nil' to the end of these statements to prevent Pry from attempting
# to inspect the returned object
evaler.eval(runtime, 'puts "Hello JavaOne, I\'m embedded!".colorize(:green); puts'); nil
require './turtles/first'
puts "Our original JRuby has version: #{JavaOne::VERSION}".colorize(:magenta)
puts
# Now let's load a the same module with a different version inside the runtime environment
evaler.eval(runtime, "require './turtles/second'"); nil
evaler.eval(runtime, "puts \"Our embedded JRuby has version: \#{JavaOne::VERSION}\".colorize(:green)"); nil

