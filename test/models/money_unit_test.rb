require 'test_helper'

class MoneyUnitTest < ActiveSupport::TestCase

  def setup
    @penny = MoneyUnit.new(0.01, "penny")
    @dollar_bill_1 = MoneyUnit.new(1, "1 dollar bill")
    @dollar_bill_20 = MoneyUnit.new(20, "20 dollar bill")
    @invalid_1 = MoneyUnit.new("-0", "1 dollar bill")
    @invalid_2 = MoneyUnit.new("-1", "1 dollar bill")
    @invalid_3 = MoneyUnit.new("1", "")
  end

  test "penny should be valid" do
    assert @penny.valid?
  end

  test "penny.to_s should be \"penny\"" do
    assert @penny.to_s == "penny"
  end

  test "dollar_bill_1 should be valid" do
    assert @dollar_bill_1.valid?
  end

  test "dollar_bill_1.to_s should be \"1 dollar bill\"" do
    assert @dollar_bill_1.to_s == "1 dollar bill"
  end

  test "dollar_bill_20 should be valid" do
    assert @dollar_bill_20.valid?
  end

  test "dollar_bill_20.to_s should be \"20 dollar bill\"" do
    assert @dollar_bill_20.to_s == "20 dollar bill"
  end

  test "invalid_1 should be invalid" do
    assert !@invalid_1.valid?
  end

  test "invalid_2 should be invalid" do
    assert !@invalid_2.valid?
  end

  test "invalid_3 should be invalid" do
    assert !@invalid_3.valid?
  end

end
