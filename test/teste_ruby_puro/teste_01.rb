class Bagmon
    def initialize(bag)
        Bagmon.create_method(bag)
    end

    def self.create_method(bag)
        define_method :"bamgon_#{bag.downcase}" do
            "Olá, eu sou o #{bag}, um bagmon da bagdex!"
        end
    end
end

puts "===========Digite o Bagmon"
bagmon=gets.chomp
x = Bagmon.new(bagmon)

puts x.send("bamgon_#{bagmon.to_s.downcase}")