class Product
  attr_accessor :name, *:medidas
  def initialize(name, *medidas)
    @name = name
    @medidas = medidas.map(&:to_i)
  end

  def promedio
    @medidas.inject(&:+) / @medidas.size.to_f
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines.map(&:chomp)}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

p products_list

products_list.each do |product|
  p product.name
  p product.promedio
end
