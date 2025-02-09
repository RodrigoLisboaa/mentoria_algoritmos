puts "Calculadora Simples!"
loop do
  operação = nil
  while operação.nil? || operação <= 0 || operação > 4
    print "Escolha a operação que deseja fazer: 1- Adição 2- Subtração 3- Multiplicação 4- Divisão: "
    operação = gets.chomp.to_i
    puts "Escolha de operação inválida" if operação <= 0 || operação > 4
  end
  print "Digite o primeiro número: "
  num1 = gets.chomp.to_f
  print "Digite o segundo número: "
  num2 = gets.chomp.to_f
  case operação
  when 1
    puts "A soma dos dois números = #{num1 + num2}"
  when 2
    puts "A subtração dos dois números = #{num1 - num2}"
  when 3
    puts "A multiplicação dos dois números = #{num1 * num2}"
  when 4
    puts "A divisão dos dois números = #{num1 / num2}"
  end
  puts "Deseja continuar? Digite s para continuar"
  saida = gets.chomp
  break if saida.downcase != 's'
end
puts "Saindo da calculadora."