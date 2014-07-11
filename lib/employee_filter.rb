class EmployeeFilter

  def initialize(employees)
    @employees = employees
  end

  def started_before_2006
    @employees.select do |x|
      x[:start_date].year < 2006
    end
  end
  # Date.new(2008, 6, 23).year
  #Filter out only those employees who started before 2006


  def all_with_start_date
    @employees.map do |employee_hash|
      "#{employee_hash[:first_name]} #{employee_hash[:last_name]} (#{employee_hash[:title]}) - #{time(employee_hash[:start_date])}"
    end
  end


  def time(date)
    "#{date.month}/#{date.day}/#{date.year}"

  end
end