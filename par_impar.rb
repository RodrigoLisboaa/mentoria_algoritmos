puts "Digite o número pra saber se é par ou ímpar"
num = gets.chomp.to_i
if num % 2 == 0
  puts "Par"
else
  puts "Ímpar"
end