describe 'Seleciona múltiplos atores' do

    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
    end

    def seleciona(ator)

        find('.select2-selection--multiple').click
        find('.select2-search__field').set ator
        find('.select2-results__option').click

    end

    it 'seleciona multiplos', :multis do

        atores = ['Jim Carrey', 'Owen Wilson', 'Adam Sandler']

        atores.each do |a|

            seleciona(a)
        end
    end

    # Esse pode ser uma forma de implementar essa automação.
    it 'selacao multipla', :mult do

        seleciona('Jim Carrey')
        seleciona('Owen Wilson')
        sleep 4
    end
    
end