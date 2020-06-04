require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(index)
        @happiness = index
        @happiness = 10 if index > 10
        @happiness = 0 if index < 0
    end

    def hygiene=(index)
        @hygiene = index
        @hygiene = 10 if index > 10
        @hygiene = 0 if index < 0
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end
    
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        return  "♪ another one bites the dust ♫"
    end

    def call_friend(instance)
        @happiness += 3
        self.happiness=(@happiness)
        instance.happiness += 3
        return "Hi #{instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(instance, topic)
        case topic
        when "politics"
            self.happiness -= 2
            instance.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            instance.happiness += 1
            return "blah blah sun blah rain"
        else
            return 'blah blah blah blah blah'
        end
        
    end

end