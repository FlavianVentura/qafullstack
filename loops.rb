# Executando um loop com o número de vezes passado ante do método Time
5.times do
    puts 'Eu estou criando um array em ruby.'
end

# Declarando um array em ruby
vingadores = ['Hulk', 'Iron man', 'Capitão América']

# Iterando um array com foreach
vingadores.each do |v|
    puts v
end

# Percorre os itns de acordo com o tamanho passo dentro dos parenteses
for item in (0...10)
    puts 'repetindo a mensagem ' + item.to_s + ' Vezes'
end

