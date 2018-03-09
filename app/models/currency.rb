require 'singleton'

class Currency
  include Singleton

  attr_reader :usd_unit

  def initialize
    @usd_unit =
    [
        MoneyUnit.new(100, "100 dollar bill"),
        MoneyUnit.new(50, "50 dollar bill"),
        MoneyUnit.new(20, "20 dollar bill"),
        MoneyUnit.new(10, "10 dollar bill"),
        MoneyUnit.new(5, "5 dollar bill"),
        MoneyUnit.new(1, "1 dollar bill"),
        MoneyUnit.new(0.25, "quarter"),
        MoneyUnit.new(0.10, "dime"),
        MoneyUnit.new(0.05, "nickel"),
        MoneyUnit.new(0.01, "penny")
    ]
  end
end
