print "Verificação de palíndromo! Digite uma palavra: "
palavra = gets.chomp.downcase
if
  palavra == palavra.reverse
  puts "É um palíndromo."
else
  puts "Não é um palíndromo."
end