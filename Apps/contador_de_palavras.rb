puts "Contador de palavras!"
loop do
    puts "Digite uma frase"
    frase = gets.chomp
    separados = frase.split
    cont = 0
    separados.each do |separado|
        puts "#{cont + 1} . " + separado
        cont += 1
    end
    puts "Total de palavras na frase = " + cont.to_s
    puts "Deseja continuar? Digite s para continuar"
    saida = gets.chomp
    break if saida.downcase != "s"
end
puts "Saindo do programa"