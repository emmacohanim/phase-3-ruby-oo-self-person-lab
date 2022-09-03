# your code goes here
class Person
attr_accessor :bank_account, :happiness, :hygiene
attr_reader :name

def initialize(bank_account, happiness, hygiene, name)
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    @name = name
end

def get_value(instance_variable)
    puts self.instance_variable
end

def set_value(instance_variable, new_value)
    self.instance_variable = new_value
end

def is_clean_or_happy
    self.happiness > 7 || self.hygiene > 7 ? true : false
end

def get_paid(added_amount)
    self.bank_account += added_amount
    puts "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    puts "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.happiness += 2
    self.hygiene -= 3
    puts "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    puts "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
    if topic == "politics"
        friend.happiness -= 2
        self.happiness -= 2
        puts "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        friend.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
    else
        puts "blah blah blah blah blah"
    end
end

p1 = Person.new(name, bank_account = 25, happiness = 8, hygiene = 8)
end