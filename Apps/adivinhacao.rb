puts "Jogo da adivinhação!"
loop do
  num = rand(1..10)
  loop do
    print "Escolha um número de 1 a 10: "
    chute = gets.chomp.to_i
    if chute <= 0 || chute > 10
      puts "Escolha inválida. Digite um número entre 1 e 10."
      next
    end
    if chute > num
      puts "Número maior que o correto, tente novamente"
    elsif chute < num
      puts "Número menor que o correto, tente novamente"
    else
      puts "Acertou!"
      break
    end
  end
  puts "Quer jogar novamente? Digite 's' para continuar"
  saida = gets.chomp
  break if saida.downcase != "s"
end