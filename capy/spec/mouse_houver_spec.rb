describe 'trabalhando com mouse hover', :hover do

    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse no Blade', :blade do

        # Aqui a busca é por elementos que contenham a palavra informamada...
        card = find('img[alt*=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'

    end

    it 'quando passo o mouse em pantera negra', :pantera do

        #O nome pantera negra está entre aspas duplas por que contem caracter especial "espaço" para assim ser reconhecido pelo capybara
        card = find('img[alt="Pantera Negra"]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse em Homen Aranha' do
        # Aqui, usaremos expressões regulares para busca de elementos.
        # Este $ significa dizer que a busca é por elementos que terminem com a palavra "Aranha..."
        card = find('img[alt$=Aranha]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do

        sleep 3
    end

end