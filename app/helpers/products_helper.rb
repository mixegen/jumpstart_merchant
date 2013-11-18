module ProductsHelper
  def print_price(price)
    number_to_currency price
  end

  def print_stock(amount, requested=1)
    content_tag(:span, class: 'in_stock') do
      if amount == 0
        "Out of stock"
      elsif amount >= requested
        "In stock"
      else
        content_tag(:span, "Insufficient stock (#{amount})", class: 'low_stock')
      end
    end
  end
end
