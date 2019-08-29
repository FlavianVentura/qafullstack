

describe 'selecionando itens no select', :dropdown, :smoke do

    # Quando o objeto select contem um "ID" para ser selecionado...
    it 'selecionando iten com id' do

        visit '/dropdown'

        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'selecionando o iten sem id do elemento' do

        visit '/dropdown'
        
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'selecionando o iten atraves do array', :sample do

        visit '/dropdown'
        
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end


end