describe 'Acessar página de login e cadastro' do

before(:each) do

    visit 'https://training-wheels-protocol.herokuapp.com/access'
end 

    it 'login com sucesso', :login do

        # Esse método within acessa diretamente o elemento pai, realizando assim o escopo em que caso haja um 
        # ou ,ais elementos com o mesmo "nome ou id" ele pegará apenas o do elemento "Pai"
       within('#login') do 

            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end

        expect(page).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'cadastro com sucesso', :cadastro do

        within('#signup') do

            find('input[name=username]').set 'Flavian'
            find('input[name=password]').set '123456'
            click_link 'Criar Conta'
        end

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end

