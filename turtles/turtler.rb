# We will create an embedded JRuby instance to provide runtime separation!
#
# More details on embedding JRuby can be found here:
# <https://github.com/jruby/jruby/wiki/DirectJRubyEmbedding>
#

java_import org.jruby.Ruby
java_import org.jruby.RubyRuntimeAdapter
java_import org.jruby.javasupport.JavaEmbedUtils

# Create our runtime
runtime = JavaEmbedUtils.initialize(java.util.ArrayList.new)

# Create our evaluator
evaler = JavaEmbedUtils.new_runtime_adapter

# Appending 'nil' to the end of these statements to prevent Pry from attempting
# to inspect the returned object
evaler.eval(runtime, 'puts; puts "Hello JavaOne, I\'m embedded!"; puts'); nil


require './turtles/first'
puts "Our parent's scope is version: #{JavaOne::VERSION}"

# Now let's load a the same module with a different version inside the runtime
# environment
evaler.eval(runtime, "require './turtles/second'"); nil
evaler.eval(runtime, "puts \"Our child scope is: \#{JavaOne::VERSION}\""); nil



