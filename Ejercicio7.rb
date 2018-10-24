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

new_cat = []
products_list.each do |product|
  h = product.medidas.size
  h = h - 2
  y = product.medidas.slice(0..h)
  new_cat << y

end
p new_cat

File.open('nuevo_catalogo.txt', 'a') do |line| line.print new_cat end
