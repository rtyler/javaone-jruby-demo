require './jars/jfiglet/jfiglet-0.0.5.jar'

java_import com.github.lalyos.jfiglet.FigletFont

puts FigletFont.convert_one_line 'Hello JavaOne!'
