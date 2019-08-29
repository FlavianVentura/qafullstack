describe 'campos dinamicos', :dc do 

    before(:each) do

        visit '/dynamic_controls'
    end

    it 'esperando campo habilitado' do

        @res = page.has_field? 'movie', disabled: true

        click_button 'Habilita'

    end

    after(:each) do

        sleep 5
    end
end