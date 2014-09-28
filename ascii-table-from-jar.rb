# This code is just using the Java code from:
# <http://code.google.com/p/java-ascii-table/> to print a simple little email
# table

require './jars/asciitable/btc-ascii-table-1.0.jar'

java_import com.bethecoder.ascii_table.ASCIITable

headers = ['Subject', 'From']

mails = [
  ["NOT SPAM WE PROMISE", "sirspamsalot@hotmail.com"],
  ['Important work related info', 'yourboss@example.com'],
  ["Don't forget the milk", 'spouse@family.io'],
]

def make_table(first_row, data)
  # In order to pass our primitive Arrays of objects into the Java library we
  # need to coerce them a bit
  #
  # getTable(String[], String[][])
  ASCIITable.instance.get_table(
    first_row.to_java(java.lang.String),
    data.to_java(java.lang.String[]))
end

puts make_table(headers, mails)
