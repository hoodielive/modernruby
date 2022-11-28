class Person
  Address =
    Struct.new(:street_1, :street_2, :city, :province, :country, :postal_code)

  attr_accessor :name, :address

  def initialize(name, opts)
    @name = name
    @opts = opts
  end
end

larry =
  Person.new(
    "Larry IT",
    {
      street_1: "123 Somewhere in the Universe Rd",
      city: "Hades",
      province: "Aly",
      country: "United States",
      postal_code: "Blah Blah"
    }
  )

puts larry.address.inspect
