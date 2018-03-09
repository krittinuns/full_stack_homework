require 'test_helper'

class ChangeMachineTest < ActiveSupport::TestCase

  def setup
    @change_machine  = ChangeMachine.new(Currency.instance.usd_unit)
  end

  test "1.00 should be \"Your change is 1 1 dollar bill.\"" do
    assert @change_machine.get_change("1.00") == "Your change is 1 1 dollar bill."
  end

  test ".99 should be \"Your change is 3 quarters, 2 dimes, and 4 pennies.\"" do
    assert @change_machine.get_change(".99") == "Your change is 3 quarters, 2 dimes, and 4 pennies."
  end

  test "124.67 should be \"Your change is 1 100 dollar bill, 1 20 dollar bill, 4 1 dollar bills, 2 quarters, 1 dime, 1 nickel, and 2 pennies.\"" do
    assert @change_machine.get_change("124.67") == "Your change is 1 100 dollar bill, 1 20 dollar bill, 4 1 dollar bills, 2 quarters, 1 dime, 1 nickel, and 2 pennies."
  end
end
