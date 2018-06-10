
# cd documents/desafio/semana7/e7cp2a1
#
# 1. Crear un menú que permita registrar la información de los alumnos del curso.
#
# 2. Opción 1: Permite ingresar los datos de una persona:
#     - Nombre
#     - Edad
#     - Comuna
#     - Género
#
# 3. Opción 2: Permite editar los datos de la persona.
# 4. Opción 3: Permite eliminar una persona.
# 5. Opción 4: Muestra la cantidad de personas ingresadas.
# 6. Opción 5: Muestra las comunas de todas las personas.
#
# 	*hint:* Generar un array con las comunas, eliminar repeticiones. Considerar que pueden haber nombres escritos con mayúscula y minúscula.
#
# 5. Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
# 6. Opción 7: Muestra la suma de las edades de todas las personas.
# 7. Opción 8: Muestra el promedio de las edades del grupo.
# 8. Opción 9: Muestra dos listas de personas, una por cada género.
# 9. El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).

data_base = [['Romeo', 21, 'Providencia', 'Hombre'], ['Catalina', 23, 'Santiago', 'Mujer'], ['Sergio', 32, 'Macul', 'Hombre']]

def operation(array, option)
  if option == 1
    puts "Ingresar nuevo usuario"
    puts "Nombre:"
    name = gets.chomp().to_s
    puts "Edad:"
    age = gets.chomp().to_i
    puts "Ciudad"
    city = gets.chomp().to_s
    puts "Genero:"
    gender = gets.chomp().to_s
    new_array = []
    new_array.push(name).push(age).push(city).push(gender)
    array.push(new_array)
    puts ""
    puts "Nueva Base de Datos:"
    print array
  elsif option == 2
    puts "Ingrese el nombre de una persona para editar sus datos"
    name = gets.chomp().to_s
    print array.assoc(name)
    while array.assoc(name) == nil
      puts "No existe esa persona, intente de nuevo:"
      puts "Eliga una de los siguientes personas:"
      array.each { |k| puts k[0] }
      name = gets.chomp().to_s
    end
    puts "Información actual: #{array.assoc(name)}"
    array.delete_at(array.index(array.assoc(name)))
    puts "Modificando la información de #{name}"
    puts "Modificar Nombre:"
    name = gets.chomp().to_s
    puts "Modificar edad:"
    age = gets.chomp().to_i
    puts "Modificar Ciudad"
    city = gets.chomp().to_s
    puts "Modificar Genero:"
    gender = gets.chomp().to_s
    new_array = []
    new_array.push(name).push(age).push(city).push(gender)
    array.push(new_array)
    puts ""
    puts "Nueva Base de Datos:"
    print array
  elsif option == 3
    puts "Ingrese el nombre de la persona para eliminar de la base de datos"
    name = gets.chomp()
    puts "Esta seguro de eliminar esta persona de la BD? (S/N)"
    response = gets.chomp().to_s
    if response.downcase == "s"
      array.delete_at(array.index(array.assoc(name)))
    else
      option == 10
    end
    puts "Nuevo base de datos de personas"
    print array
  elsif option == 4
    puts "El total de personas en la base de datos es: #{array.length}"
    puts "Base de datos:"
    print array
  elsif option == 5
    puts "Las comunas de todas las peronas son:"
    city = []
    array.each do |array_element|
      city.push(array_element[2].downcase)
    end
    puts city.uniq
  elsif option == 6
    puts "Personas entre 20 y 25 años:"
    new_array = []
    array.each do |array_element|
      new_array.push(array_element) if array_element[1] > 20 && array_element[1] < 25
    end
    print new_array
  elsif option == 7
    puts "Suma de edades de todas las personas"
    sum = 0
    array.each do |array_element|
      sum = sum + array_element[1]
    end
    puts sum
  elsif option == 8
    puts "Promedio de edades de todas las personas"
    sum = 0
    array.each do |array_element|
      sum = sum + array_element[1]
    end
    puts sum/array.length
  elsif option == 9
    puts "Personas por genero"
    men = []
    women = []
    array.each do |array_element|
      men.push(array_element) if array_element[3].downcase == "hombre"
    end
    array.each do |array_element|
      women.push(array_element) if array_element[3].downcase == "mujer"
    end
    puts "Hombres:"
    print men
    puts""
    puts "Mujeres"
    print women
  end
end

option = 0
while option != 10
  puts ""
  puts "Bienvenidos, ingrese algunas de las siguientes opciones:
        1-. Ingresar
        2-. Editar
        3-. Eliminar
        4-. Total de personas
        5-. Mostrar comunas
        6-. Personas entre 20 y 25 años
        7-. Mostrar suma de edades del grupo
        8-. Mostrar promedio de edades del grupos
        9-. Mostrar lista de personas por genero
        10- Salir del programa"
  option = gets.chomp().to_i
  operation(data_base, option)
end
puts "Ha salido del programa"
