describe 'alerts JS' do 

    before(:each) do

        visit '/javascript_alerts'
    end

    it 'alerta', :alert do

        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 2
    end

    it 'sim confirma', :accept do

        click_button 'Confirma'
        
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 2

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'

    end

    it 'não confirma', :no_accept do

        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 2

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
    end

    it 'Ok prompt', :prompt do

        #Método que preenche o campo com o nome informado e clica no botão OK
        accept_prompt(with: 'Flavian') do
            click_button 'Prompt'
            sleep 2
        end

        expect(page).to have_content 'Olá, Flavian'
        sleep 3
    end

    it 'dismiss prompt', :dismiss_prompt do 
        
        #Esse método deixa o campo em branco e clica no botão Cancelar
        dismiss_prompt() do 
            click_button 'Prompt' 
            sleep 1 
        end 
        
        expect(page).to have_content 'Olá, null' 
        sleep 1 
    
    end

end 