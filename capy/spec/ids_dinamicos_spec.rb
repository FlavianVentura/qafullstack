describe 'IDs dinamicos' do

    before(:each) do 

        visit 'https://training-wheels-protocol.herokuapp.com/access'
    end

    it 'ids dinamicos', :ids_dinamicos do

        find('input[id$=UsernameInput]').set 'Flavian'
        find('input[id^=PasswordInput]').set '122345'
        find('a[id*=GetStartedButton]').click
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end
end