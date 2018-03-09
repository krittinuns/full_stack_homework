class MoneyBundle
  include ActiveModel::Model

  attr_accessor :money_bundle

  def initialize
    @money_bundle = []
  end

  def add_money( quantity, money_unit )
    @money_bundle.push({ quantity: quantity , money_unit: money_unit }) if quantity > 0
  end

  def to_s
    words = []
    for money in money_bundle do
      if money[:quantity] > 0
        word = "#{money[:quantity]} "
        word += money[:money_unit].to_s.pluralize(money[:quantity])
        words.push(word)
      end
    end
    words.to_sentence
  end
end
