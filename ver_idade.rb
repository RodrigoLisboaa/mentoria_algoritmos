puts "Digite sua idade"
idade = gets.chomp.to_i
if idade < 18
  puts "Menor de idade"
else
  puts "Maior de idade"
end