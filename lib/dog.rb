# Add your code here
require 'pry'
class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        save
    end

    def self.all
        @@all.uniq
    end

    def self.clear_all
        @@all.clear
    end
    
    #binding.pry
    def self.print_all
        unique = @@all.map { |dog| dog.name }.uniq
        puts unique
    end

    def save 
        @@all << self
    end

end