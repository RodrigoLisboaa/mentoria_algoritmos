puts "Tabuada de um número! Digite o número desejado"
num = gets.chomp.to_i
x = 1
while x < 11
  mult = num * x
  puts "#{num} x #{x} = #{mult}"
  x += 1
end