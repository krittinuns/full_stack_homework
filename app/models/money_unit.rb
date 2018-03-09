class MoneyUnit
  include ActiveModel::Model

  attr_accessor :value, :name

  validates :value, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0 }
  validates :name, presence: true, length: {minimum: 1}

  def initialize( value, name )
    @value = value
    @name = name
  end

  def to_s
    @name
  end
end

# use c = CurrencyType.new
# pluralize(3, c.to_s) in views
