require_relative "employee.rb"

class Manager < Employee

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def bonus(multiplier)

        total_salary = 0

        if @employees == nil
            total_salary += self.salary
        else
            @employees.each do |emp|

                total_salary += emp.salary + emp.bonus(1)

            end
        end

        bonus = total_salary * multiplier

    end

end