# frozen_string_literal: tr

require_relative '../../app/bank'

describe ContaPoupanca do
  describe 'saca' do
    context 'quando o saldo for positivo' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(200.00)
      end

      it 'entao atualiza saldo' do
        expect(@cp.saldo).to eql 798.00
      end
    end

    context 'quando o saldo é igual a zero' do
      before(:all) do
        @cp = ContaPoupanca.new(0.0)
        @cp.saca(100.00)
      end

      it 'então exibe a mensagem' do
        expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it 'e o saldo permanece com zeros' do
        expect(@cp.saldo).to eql 0.0
      end
    end

    context 'quando o saldo é insuiciente' do
      before(:all) do
        @cp = ContaPoupanca.new(500.00)
        @cp.saca(501.00)
      end

      it 'então exibe a mensagem' do
        expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it 'e o saldo permanece' do
        expect(@cp.saldo).to eql 500.00
      end
    end

    context 'quando o saque ultrapassa o limite :(' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(701.00)
      end

      it 'então exibe a mensagem' do
        expect(@cp.mensagem).to eql 'Limite máximo por saque é de R$ 500.0'
      end

      it 'e o saldo permanece' do
        expect(@cp.saldo).to eql 1000.00
      end
    end
  end
end
