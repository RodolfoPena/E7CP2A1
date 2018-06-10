# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método *.select*.
# - Utilizando *.map* crear una arreglo con los nombres en minúscula.
# - Utilizando *.select* para crear un arreglo con todos los nombres que empiecen con P.
# - Utilizando *.map* crear un arreglo único con la cantidad de letras que tiene cada nombre.
# - Utilizando *.map* y *.gsub* eliminar las vocales de todos los nombres.

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

def nombres_largos(array)
  array.select { |n| n.length > 5 }
end

print nombres_largos(nombres)
puts ""

def nombres_minuscula(array)
  array.map { |n| n.downcase }
end

print nombres_minuscula(nombres)
puts ""

def nombres_con_p(array)
  array.select { |n| n.chr == "P" }
end

print nombres_con_p(nombres)
puts ""

def arreglo_con_largo(array)
  new_array = Array.new()
  k = 0
  array.map { |n| new_array[k] = n.length }
end

print arreglo_con_largo(nombres)
puts ""

def arreglo_con_vocales(array)
  new_array = Array.new()
  k = 0
  array.map { |n| n.gsub(/[aeiou]/, '') }
end

print arreglo_con_vocales(nombres)
puts ""
