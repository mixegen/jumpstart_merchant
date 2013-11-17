module ProductsHelper
  def print_price(price)
    number_to_currency price
  end

  def print_stock(amount)
    content_tag(:span, class: 'in_stock') do
      if amount > 0
        "In stock (#{amount})"
      else
        "Out of stock"
      end
    end
  end
end
