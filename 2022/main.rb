SelectOption =
  Struct.new(:display, :value) do
    def to_ary
      [display, value]
    end
  end

option_struct = SelectOption.new("United States (US)", :us)

puts option_struct.display

# US
puts option_struct.to_ary.inspect

class SelectOption_
  attr_accessor :display, :value

  def initialize(display, value)
    @display = display
    @value = value
  end

  def to_ary
    [display, value]
  end
end

option_struct_ = SelectOption_.new("USA (USD)", :usd)
puts option_struct_.display
puts option_struct_.to_ary.inspect
