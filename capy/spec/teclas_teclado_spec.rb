describe 'validando teclas do teclado', :teclas do

    before(:each) do

        visit '/key_presses'
    end

    it 'validando simbolos' do

        #Porcento i, cria um array de simbolos no ruby
        teclas = %i[tab space escape shift control alt]

        teclas.each do |t|

            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end
    end

    it 'validando letras' do

        #porcento w, cria um array de letras
        letras = %w[a s d f g h j]

        letras.each do |l|

            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1 
        end
    end

end