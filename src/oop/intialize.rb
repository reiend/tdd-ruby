# Employee's Template
class Employee
  def initialize(first_name:, last_name:, middle_name: 'N/A')
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
  end

  def full_name
    if @middle_name.eql? 'N/A'
      "#{@first_name} #{@last_name}"
    else
      "#{@first_name} #{@last_name}, #{@middle_name[0]}"
    end
  end
end

zeref = Employee.new first_name: 'zeref', last_name: 'dragneel', middle_name: 'etherious'

p zeref.full_name
