require 'readline'
module Primos
    # @author Chiara Piccinini Núñez
    class Primos
        # Detecta los primos hasta el límite
        # @param [Integer] límite hasta el que calcula los primos
        def initialize number
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
                @ps << p if pr
                p+= 1
            end
        end
        # Imprime los primos
        def print
            @ps.each {|x| puts x}
        end
    end
end