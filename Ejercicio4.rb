#Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:
#Instanciar un nuevo perro a partir de las propiedades contenidas en el hash.
# Luego generar un método llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"

class Dog


  def initialize(nombre, raza, color)
    @nombre = nombre
    @raza = raza
    @color = color
  end
  def ladrar
     "#{@nombre} esta ladrando!"
  end
end
propiedades = {nombre: 'Beethoven',
               raza: 'San Bernardo',
               color: 'Cafe',
               }
h = Dog.new(propiedades.values[0],propiedades.values[1],propiedades.values[2])
p h.ladrar
