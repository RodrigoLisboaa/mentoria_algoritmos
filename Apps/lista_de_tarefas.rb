puts "Bem vindo a sua lista de tarefas!"
tarefas = []
loop do
  opcao = nil
 
  while opcao.nil? || opcao <= 0 || opcao > 4
    puts "O que deseja fazer?"
    puts "Digite 1 para adicionar uma tarefa."
    puts "Digite 2 para listar todas as tarefas."
    puts "Digite 3 para remover uma tarefa."
    print "Digite 4 para sair: "
    opcao = gets.chomp.to_i
    puts "Escolha inválida" if opcao <= 0 || opcao > 4
  end
  case opcao
  when 1
    puts "Digite a tarefa a ser adicionada"
    nova = gets.chomp
    tarefas << nova
    puts "Tarefa adicionada a lista"
  when 2
    if tarefas.empty?
      puts "Nenhuma tarefa cadastrada."
    else
      puts "Lista de tarefas atuais:"
      tarefas.each_with_index { |tarefa, index| puts "#{index + 1}. #{tarefa}" }
    end
  when 3
    if tarefas.empty?
      puts "Nenhuma tarefa para remover."
    else
      puts "Escolha o número da tarefa a ser deletada:"
      tarefas.each_with_index { |tarefa, index| puts "#{index + 1}. #{tarefa}" }
      remover = gets.chomp.to_i
      if remover > 0 && remover <= tarefas.length
        tarefas.delete_at(remover - 1)
        puts "Tarefa removida."
      else
        puts "Número de tarefa inválido."
      end
    end
  when 4
    break
  end
end
puts "Saindo da lista de tarefas"