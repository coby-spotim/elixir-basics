defmodule Shop do
  def simple_conditional_checkout(price) do
    case ask_number("Quantity?") do
      :error -> IO.puts("It's not a number")
      {quantity, _} -> quantity * price
    end
  end

  def ugly_conditional_checkout() do
    case ask_number("Quantity?") do
      :error -> IO.puts("It's not a number")
      {quantity, _} ->
        case ask_number("Price") do
          :error -> IO.puts("It's not a number")
          {price, _} -> quantity * price
        end
    end
  end

  def clean_conditional_checkout() do
    quantity = ask_number("Quantity?")
    price = ask_number("Price?")
    calculate(quantity, price)
  end

  def calculate(:error, _) do
    IO.puts("Quantity is not a number")
  end
  def calculate(_, :error) do
    IO.puts("Price is not a number")
  end
  def calculate({quantity, _}, {price, _}) do
    quantity * price
  end


  def try_rescue_checkout() do
    try do
      {quantity, _} = ask_number("Quantity?")
      {price, _} = ask_number("Price?")
      quantity * price
    rescue
      MatchError -> "Something is not a number"
    end
  end


  def with_checkout do
    result =
      with {quantity, _} <- ask_number("Quantity?"), {price, _} <- ask_number("Price?"), do: quantity * price
      if result == :error, do: IO.puts("Something is not a number"), else: result
  end

  def with_else_checkout do
    result =
      with {quantity, _} <- ask_number("Quantity?"), {price, _} <- ask_number("Price?") do
          quantity * price
      else
        :error -> IO.puts("Something is not a number")
      end
  end

  def ask_number(message) do
    message <> "\n"
    |> IO.gets
    |> Integer.parse
  end
end
