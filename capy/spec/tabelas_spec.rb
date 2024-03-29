describe 'manipulando tabelas', :tabs, :smoke do


    before(:each) do

        visit '/tables'
    end

    it 'deve exibir o salario do stark' do

        atores = all('table tbody tr')
        stark = atores.detect{ |ator| ator.text.include? 'Robert Downey Jr' }
        expect(stark).to have_content '10.000.000'

    end

    it 'deve exibir o salaio do vin diesel' do

        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content '10.000.000'
    end

    it 'deve exibir o filme volozes e furiosos' do

        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text
        expect(movie).to eql 'Velozes e Furiosos'
    end

    it 'deve exibir o insta do cris evans' do

        evans = find('table tbody tr', text: '@teamcevans')
        insta = evans.all('td')[4].text
        expect(insta).to eql '@teamcevans'
    end

    it 'deve selecionar cris prat para remoção' do

        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'delete').click

        # Pega o texto que está presente no alert e compara com o texto informado.
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end

    it 'deve selecionar cris prat para edição' do

        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'edit').click

        # Pega o texto que está presente no alert e compara com o texto informado.
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    end
end