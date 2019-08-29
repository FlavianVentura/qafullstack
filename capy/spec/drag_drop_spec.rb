describe 'Drag and Drop', :drop do

    before(:each) do
        
        visit '/drag_and_drop'
    end

    it 'arrastando imagem do team cap para stark' do

        #Usamos essa forma para buscar o elemento Pai (div .team-stark) e depois o Filho (div .column).
        stark = find('.team-stark .column')
        imgAranha = find('img[alt$=Aranha]')

       # Usamos ".drag_to" para mover o elemento de um lugar para o outro.
        imgAranha.drag_to stark

        # Aqui usamos o método "have_css" para validar se contem um css no elemento
        expect(stark).to have_css 'img[alt$=Aranha]'

        sleep 5
    end
end