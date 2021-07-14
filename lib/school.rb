class School
    attr_accessor :name, :roster

    def initialize(name)
        self.name = name
        self.roster = {}
    end

    def add_student(name, grade)
        self.roster[grade] = self.roster[grade] || []
        self.roster[grade] << name
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        result = {}
        self.roster.each do |grade, students|
            result[grade] = students.sort
        end
        result
    end
end