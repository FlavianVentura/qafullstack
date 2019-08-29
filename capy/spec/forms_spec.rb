describe 'Forms' do

    it 'login com sucesso' do

        visit '/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        #O método Text pega o texto presente na pagina e o include verifica se o texto existe o objeto da página
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        #O método have-content verifica se o texto existe em algum lugar da página.
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

   it 'login senha incorreta' do

    visit '/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'stark!'
        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Senha é invalida!'

   end

   it 'usuário não cadastrado' do

        visit '/login'

        fill_in 'username', with: 'qualquercoisa'
        fill_in 'password', with: 'maisoutracoisa'
        click_button 'Login'

        expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'
   end

end