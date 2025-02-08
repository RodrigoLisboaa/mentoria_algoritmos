def primo?(n)
  return false if n <= 1  # Números menores ou iguais a 1 não são primos
  return true if n == 2   # 2 é primo (único número par primo)
  
  (2..Math.sqrt(n).to_i).each do |i|
    return false if n % i == 0  # Se for divisível por algum número, não é primo
  end
  
  true  # Se passou por todos os testes, é primo
end

# Pede um número ao usuário
print "Digite um número para verificar se é primo: "
numero = gets.chomp.to_i  # Lê a entrada e converte para inteiro

# Verifica e exibe o resultado
if primo?(numero)
  puts "#{numero} é um número primo!"
else
  puts "#{numero} não é um número primo."
end
