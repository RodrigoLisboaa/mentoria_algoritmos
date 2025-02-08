print "Sequência Fibonacci! Digite um número para saber essa quantidade de números na sequência Fibonacci: "
n = gets.chomp.to_i
n1 = 0
n2 = 1
x = 3
if n >= 1
  puts n1
end
if n >= 2
  puts n2
end
while n >= x
  n3 = n1 + n2
  puts "#{n3}"
  n1 = n2
  n2 = n3
  x += 1
end