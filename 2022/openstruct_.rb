class Brewer
  def initialize(name, value)
    @name = name
    @value = value
  end
end

kcup = Struct.new(:size, :brewing_time, :brewing_tmp)
columbian = kcup.new(:small, 60, 85)

brewer = Brewer.new(columbian)
expect(brewer.brew).to eq(true)

australia = OpenStruct.new(country: "Australia", population: 20_000_000)
p australia

Vendor = Struct.new(:name, :address)
Product = Struct.new(:name, :vendor, :price)

# Create instances of them
localFarmer = Vendor.new("Farmer Brown", { city: "Toronto" })
duck = Product.new("Duck Egg", localFarmer, 0.25)

# Dig through the Structs + Hash to get value
puts duck.dig(:vendor, :address, :city)
