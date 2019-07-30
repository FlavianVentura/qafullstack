describe 'select 2', :select2 do

    describe 'sigle', :single do

        before(:each) do

            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'seleciona um ator' do

            find('.select2-selection--single').click
            sleep 2
            
            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 4
        end

        it 'buscando por nomes', :busca do

            find('.select2-selection--single').click
            sleep 1

            find('.select2-search__field').set 'Chris Rock'

            find('.select2-results__option').click
            sleep 2

        end
    end


end