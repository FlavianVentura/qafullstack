describe 'selecionando radiobuttons', :radio do

    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'selecionando radio atravez do ID' do

        choose('cap')
    end

    it 'selecionando o radio atravez do VALUE' do

        find('input[value=guardians]').click
    end

    after(:each) do

        sleep 3
    end
end