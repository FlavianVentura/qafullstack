describe 'Preenchendo campos dinamico' do 

    before(:each) do 

        visit 'https://training-wheels-protocol.herokuapp.com/login2'
    end 

    it 'validando compo dinamico', :rand do

        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'

        form_login = find('#login')

        case form_login.text

        when /Dia/
            find('#day').set '29'

        when /Mês/
            find('#month').set '05'

        when /Ano/ 
            find('#year').set '1970'
        end

        click_button 'Login'
        sleep 3
    end

end