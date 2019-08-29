describe 'usando Iframes bons e ruins' do

    describe 'iframe bom', :nice do

        before(:each) do
    
            visit '/nice_iframe'
        end
    
        it 'adicionando ao carrinho' do
    
            #Esse método "within_frame" é utilizado para acessar iframes, e assim conseguirmos ter acesso aos elementos do iframe
            within_frame('burgerId') do

                produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5
            end
        end
    end

    describe 'ruim', :bad do

        before(:each) do

            visit '/bad_iframe'
        end

        it 'o carrinho deve estar vazio' do

            # Aqui utilizamos a estratégia de criarmo um "ID" temporário na página para que assim, consigamos ter acesso ao Iframe
            # O capybara só reconhece Iframes que possuem "IDs ou names".

            script = '$(".box-iframe").attr("id", "tempId");'
            page.execute_script(script)

            within_frame('tempId') do

                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
                sleep 3
            end
        end
    end
end 