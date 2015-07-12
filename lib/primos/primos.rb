require 'readline'
module Primos
    # @author Chiara Piccinini Núñez
    class Primos
        # Find all the prime numbers minor than another natural number.
        # @param [Integer] The limit to stop the searching.
        def initialize number
            @number = number
            p = 2
            @ps = []
            while p < number
                pr = true
                @ps.each do |x|
                    if p % x == 0
                        pr = false
                        break
                    end
                end
                if pr
                    @ps << p
                    puts "#{p} <= #{@ps.count} ✓"
                end
                p+= 1
            end
            self.print
        end
        # Print the quantity of primes that been found and the limit.
        def print
            puts "Total de primos: #{@ps.count}"
            puts "Hasta el número: #{@number}"
        end
    end
end