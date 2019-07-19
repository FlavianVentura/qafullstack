class ContaCorrente

    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor)

        if(valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque :('
        elsif (valor > 700.00)
            self.mensagem = 'Limite máximo por saque é de R$ 700'
        else
            self.saldo -= valor
        end

    end

end

describe ContaCorrente do

    describe 'saca' do

        context 'quando o saldo for positivo' do

            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200.00)
            end

            it 'entao atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
            
        end

        context 'quando o saldo é igual a zero' do
            
            before(:all) do
                @conta = ContaCorrente.new(0.0)
                @conta.saca(100.00)
            end

            it 'Vejo a mensagem de saldo igual a zero' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'meu saldo permanece com zero' do
                expect(@conta.saldo).to eql 0.0
            end
        
        end

        context 'Tenho saldo mas não o suficiente' do

            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(701.00)
            end

            it 'vejo a mensagem' do
                expect(@conta.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end

            it 'meu saldo final deve ser R$ 700' do
                expect(@conta.saldo).to eql 1000.00
            end

        end

    end

end