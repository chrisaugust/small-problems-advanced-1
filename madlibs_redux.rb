# Madlibs Revisited 
#
# Problem
# Make a madlibs program that reads in some text from a custom-written text file,
# plugs in a selection of randomized nouns, verbs, adjectives, and adverbs
# into that text, and prints it. The list of nouns, verbs, etc. can be written into
# the program but the text data should come from an external file.
#
# Examples
#
# Text Data:
# The %{adjective} brown %{noun} %{adverb}
# %{verb} the %{adjective} yellow
# %{noun}, who %{adverb} %{verb} his
# %{noun} and looks around.
#
# Output:
# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.
#
#
# Data Structures / Type Signature
# hash = { noun: %w(bird dog car face armpit skyscraper),
#          verb: %w(run jump kick construct wash conceal feed),
#          ... 
#        }
#
# String, Hash -> String
#
#
# Algorithm
# 0) read external file
# 1) break up file text into an array of lines
# 2) loop through the lines, substituting a random word from the
#    words_hash into the placeholder in the text for that word type
# 3) loop through the lines again, this time printing to stdout
#
#
# Code
require 'test/unit'

# class <Title> < Test::Unit::TestCase
#   def test_<method_name>
#     assert_equal(<method_name(arg)>, <expected results>)
#   end
# end

words_hash = { noun: %w(dog cat bird fish tiger elephant lizard),
               verb: %w(read jump lounge sing fly philosophize kibbutz calculate),
               adverb: %w(quickly softly languorously dangerously viciously kindly),
               adjective: %w(sleek furry wrinkled powerful lazy energetic wise hungry)
             }

def madlibs(text, words_hash)
  lines = File.readlines(text)
  lines.each do |line|
    words_hash.each do |k,v|
      line.gsub!("%{#{k}}", v.sample)
    end
    puts line
  end
end

10.times { madlibs('madlibs.txt', words_hash); puts }
