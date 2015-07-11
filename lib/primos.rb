require "primos/version"

Dir[File.join( File.dirname(__FILE__) , 'primos' , '*.rb')].each {|file| require file}
include Primos