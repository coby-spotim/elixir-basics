defmodule Ecommerce.Checkout do
  def total_price(price, tax_rate) do
    price * (tax_rate + 1)
  end
end

# Commands to use in IEx session
# c("checkout.ex")
# Ecommerce.Checkout.total_price(100, 0.2)

