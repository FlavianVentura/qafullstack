# Os métodos em Ruby são definidos dentro das palavras reservadas "def e end", os métodos podem recebe
# ou não argumentos. Um método em Ruby sempre retorna a altima instrução declarada.

def digaOla(nome) 

    puts 'Olá, ' + nome
end

digaOla('Flavian')


def soma(num1, num2)
    total = num1 + num2
    total
end

res = soma(12, 33)

puts res