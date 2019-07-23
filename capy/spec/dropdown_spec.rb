

describe 'selecionando itens no select', :dropdown do

    # Quando o objeto select contem um "ID" para ser selecionado...
    it 'selecionando iten com id' do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'selecionando o iten sem id do elemento' do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'selecionando o iten atraves do array', :sample do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end


end