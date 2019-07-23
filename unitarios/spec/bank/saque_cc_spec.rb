# frozen_string_literal: tr

require_relative '../../app/bank'

describe ContaCorrente do
  describe 'saca' do
    context 'quando o saldo for positivo' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(200.00)
      end

      it 'entao atualiza saldo' do
        expect(@cc.saldo).to eql 795.00
      end
    end

    context 'quando o saldo é igual a zero' do
      before(:all) do
        @cc = ContaCorrente.new(0.0)
        @cc.saca(100.00)
      end

      it 'então exibe a mensagem' do
        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it 'e o saldo permanece com zeros' do
        expect(@cc.saldo).to eql 0.0
      end
    end

    context 'quando o saldo é insuiciente' do
      before(:all) do
        @cc = ContaCorrente.new(500.00)
        @cc.saca(501.00)
      end

      it 'então exibe a mensagem' do
        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it 'e o saldo permanece' do
        expect(@cc.saldo).to eql 500.00
      end
    end

    context 'quando o saque ultrapassa o limite :(' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(701.00)
      end

      it 'então exibe a mensagem' do
        expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700.0'
      end

      it 'e o saldo permanece' do
        expect(@cc.saldo).to eql 1000.00
      end
    end
  end
end
