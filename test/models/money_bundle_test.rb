require 'test_helper'

class MoneyBundleTest < ActiveSupport::TestCase

  def setup
    @penny = MoneyUnit.new(0.01, "penny")
    @dollar_bill_1 = MoneyUnit.new(1, "1 dollar bill")
    @dollar_bill_20 = MoneyUnit.new(20, "20 dollar bill")
    @money_bundle = MoneyBundle.new
  end

  test "money_bundle should be empty on initialize" do
    assert @money_bundle.money_bundle.length == 0
  end

  test "to_s should display \"1 penny\"" do
    @money_bundle.add_money(1, @penny)
    assert @money_bundle.to_s == "1 penny"
  end

  test "to_s should display \"3 pennies\"" do
    @money_bundle.add_money(3, @penny)
    assert @money_bundle.to_s == "3 pennies"
  end

  test "to_s should display \"3 pennies and 1 1 dollar bill\"" do
    @money_bundle.add_money(3, @penny)
    @money_bundle.add_money(1, @dollar_bill_1)
    assert @money_bundle.to_s == "3 pennies and 1 1 dollar bill"
  end

  test "to_s should display \"1 20 dollar bill, 1 penny, and 2 1 dollar bills\"" do
    @money_bundle.add_money(1, @dollar_bill_20)
    @money_bundle.add_money(1, @penny)
    @money_bundle.add_money(2, @dollar_bill_1)
    assert @money_bundle.to_s == "1 20 dollar bill, 1 penny, and 2 1 dollar bills"
  end
end
