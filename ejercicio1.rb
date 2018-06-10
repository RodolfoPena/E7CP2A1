# 1. Utilizando *map* generar un nuevo arreglo con cada valor aumentado en 1.
# 2. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *float*.
# 3. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *string*.
# 4. Utilizando *reject* descartar todos los elementos <u>menores</u> a 5 en el array.
# 5. Utilizando *select* descartar todos los elementos <u>mayores</u> a 5 en el array.
# 6. Utilizando *inject* obtener la suma de todos los elementos del array.
# 7. Utilizando *group_by* agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
# 8. Utilizando *group_by* agrupar todos los números mayores y menores que 6.


 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

 def aumentar_en_1(array)
   new_array = Array.new()
   array.map { |k| new_array[k] = k + 1 }
 end

 print aumentar_en_1(a)
 puts ""

 def convertir_en_float(array)
   new_array = Array.new()
   array.map { |k| new_array[k] = k.to_f }
 end

 print convertir_en_float(a)
 puts ""

 def convertir_en_string(array)
   new_array = Array.new()
   array.map { |k| new_array[k] = k.to_s }
 end

 print convertir_en_string(a)
 puts ""

 def sacar_menores_5(array)
   array.reject {|k| k < 5}
 end

 print sacar_menores_5(a)
 puts ""

 def sacar_mayores_5(array)
   array.select { |k| k < 5 }
 end

 print sacar_mayores_5(a)
 puts ""

 def suma_elementos(array)
   array.inject(0){ |sum,x| sum + x }
 end

 print suma_elementos(a)
 puts ""

 def agrupar_pares_impares(array)
   array.group_by { |k| k.even? }
 end

 print agrupar_pares_impares(a)
 puts ""

 def agrupar_mayores_menores_6(array)
   array.group_by { |k| k > 6 }
 end

 print agrupar_mayores_menores_6(a)
 puts ""
