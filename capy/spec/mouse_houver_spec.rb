describe 'trabalhando com mouse hover', :hover do

    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse no Blade', :blade do

        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'

    end

    it 'quando passo o mouse em pantera negra', :pantera do

        card = find('img[alt="Pantera Negra"]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse em Homen Aranha' do

        card = find('img[alt="Homem Aranha"]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do

        sleep 3
    end

end