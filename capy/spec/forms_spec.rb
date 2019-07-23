describe 'Forms' do

    it 'realizar login' do

        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        #O método Text pega o texto presente na pagina e o include verifica se o texto existe o objeto da página
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        #O método have-content verifica se o texto existe em algum lugar da página.
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
end