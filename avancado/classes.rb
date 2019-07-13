class Conta

    attr_accessor :saldo, :nome

    def initialize(nome)

        self.saldo = 0.0
        self.nome = nome
    end

    
    def deposita(valor)
        
        self.saldo += valor
        puts "O valor de #{valor} foi depositado em sua conta." 
    end
    
    def saca(val)
        
        self.saldo -= val
        puts "#{self.nome}, O seu novo saldo é de: #{saldo} reais."
    end
    

    conta = Conta.new('Flavian')

    conta.saldo = 0.0
    conta.deposita(230.00)
    puts conta.saldo

    puts 'Informa o valor a ser sacado.'

    valorSacado = gets.to_f
    conta.saca(valorSacado)

end
