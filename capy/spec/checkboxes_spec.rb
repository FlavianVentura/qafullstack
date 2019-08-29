describe 'caixa de seleção', :checkbox do
    
    before(:each) do
        
        visit '/checkboxes'
    end
    
    it 'marcando uma opção pelo ID' do
        
        check('thor')
    end
    
    it 'desmarcando uma opção pelo NAME' do
        
        uncheck('antman')
    end
    
    it 'marcando uma opção pelo VALUE' do
        
        find('input[value=cap]').set(true)
    end
    
    it 'desmarcando uma opção pelo VALUE' do
        
        find('input[value=guardians]').set(false)
    end
    
    after(:each) do
        
        sleep 3
    end
    
end