puts "Digite um número para fazer uma contagem regressiva"
num = gets.chomp.to_i
while num > 0
  num -= 1
  puts num
end