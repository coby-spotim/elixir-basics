defmodule IncomeTaxCalculator do
  def calculate_tax(salary) do
    cond do
      salary <= 2000 -> 0
      salary <= 3000 -> salary * 0.05
      salary <= 6000 -> salary * 0.1
      salary > 6000 -> salary * 0.15
    end
  end
end

user_input = IO.gets "Enter your current salary: \n"
result = case Integer.parse(user_input) do
  :error -> "Invalid input for salary: #{user_input}"
  {salary, _} when salary >= 0 ->
    income_tax = IncomeTaxCalculator.calculate_tax(salary)
    net_wage = salary - income_tax
    "Net Wage: #{net_wage} - Income Tax: #{income_tax}"
end

IO.puts result
