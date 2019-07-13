# frozen_string_literal: true

class Carro
  # attr_accessor = veloc

  carro = Carro.new

  def ligar
    puts 'O carro está pronto para seguir o trajeto.'
  end

  def acelerars(velocidade)
    if velocidade > 60

      puts 'A velocidade está acima do limite permitido'
    else
      puts 'Prossiga com a sua viagem'
    end
  end

  carro.ligar

  puts 'Informe a velocidade atual...'
  velocidade = gets.chomp.to_f

  carro.acelerars(velocidade)
end
