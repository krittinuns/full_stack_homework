class ChangeMachine
  include ActiveModel::Model

  attr_reader :currency

  def initialize( currency )
    @currency = currency
  end

  def get_change( amount )
    money_bundle = get_change_money_bundle(amount)
    if money_bundle
      "Your change is #{money_bundle.to_s}."
    else
      "You don't have any change."
    end
  end

  def get_change_money_bundle( amount )
    amount = amount.to_f
    return if amount <= 0.01

    money_bundle = MoneyBundle.new
    change_left = (amount * 100).to_i

    currency.sort_by { |money_unit| money_unit.value }.reverse!

    for money_unit in @currency do
      money_unit_value = (money_unit.value * 100).to_i

      next if change_left < money_unit_value

      quantity = change_left / money_unit_value
      change_left = change_left % money_unit_value

      money_bundle.add_money(quantity, money_unit)
    end

    money_bundle
  end
end
