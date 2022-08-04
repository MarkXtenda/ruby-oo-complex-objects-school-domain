class School 
    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def add_student(name, grade)
        if (@roster.key?(grade))
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade] 
    end

    def sort()
        new_hash = Hash.new
        @roster.map do |key, value|
            new_hash[key] = []
            new_hash[key] = value.sort
        end
    new_hash
    end
end

school = School.new("lil colledge")
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.add_student("baby", 9)
school.add_student("2baby", 9)
school.add_student("AC Slater", 9)
puts school.roster
puts school.sort