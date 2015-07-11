require 'readline'
module Primos
    # @author Chiara Piccinini Núñez
    class Client
        class << self
            # Pide un número
            def get_commands
                puts 'Inserta el límite hasta donde quieres calcular primos:'
                input = Readline.readline("> ")
                if input.to_i.to_s != input.to_s or input.to_i < 1
                    puts 'Esto no es un número natural'
                else
                    primos = Primos.new(input.to_i)
                    primos.print
                end
            end
        end
    end
end