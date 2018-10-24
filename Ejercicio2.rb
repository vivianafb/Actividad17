#Corrige el siguiente código para instanciar el objeto y generar la salida de manera correcta.

class Car
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year.to_i
  end
end

car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
