class Veiculo

    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)

        self.nome = nome 
        self.marca = marca
        self.modelo = modelo
    end

    def ligar

        puts "o #{self.nome} já está ligado."
    end

    def buzinar

        puts "Beep!, Beep!"
    end

end

class Carro < Veiculo

    def dirigir
        
       puts "O #{self.nome} está pronto para seguir o seu trajeto" 
    end
end

class Moto < Veiculo

    def pilotar

        puts "A #{self.nome} já está pronta para ser pilotada."
    end
end

carro = Carro.new('Onix', 'Chevrolet', 'LT')

carro.ligar
carro.buzinar
carro.dirigir

moto = Moto.new('Cbr 1000', 'Honda', 'XRE')

moto.ligar
moto.buzinar
moto.pilotar