#!/usr/bin/env ruby

puts "Hello, #{ARGV[0]}!"

END {puts "end" }

printf "Hello %s is %s!\n", "cloud", "miku";

def hello
    yield
end

hello { puts "Hello World" }

BEGIN { puts "begin" }

puts __FILE__
puts __LINE__

a1 = 10
a2 = "begin"

puts a1.class
puts a2.class
puts a2[0]

# instance variable : @hello
# class variable : @@hello
# global variable : $global


if 1 == 1
    puts 'yes'
end

puts File.expand_path('../config/application', __FILE__)

def func1 (a)
    puts a
end

func1("func1");
func1 "func1 too"

class Cla
    attr_accessor :a, :b
    attr :a1, :a2
    def name
        @name
    end

    def set_name(name)
        @name = name
    end

    def sname= (name)
        @name = name
    end
end
p Cla.instance_methods - Object.instance_methods

hi = Cla.new
hi.set_name "cloud"
puts hi.name

hi.sname= "cloud2"
p hi.name
hi.sname = "cloud3"
puts hi.name
