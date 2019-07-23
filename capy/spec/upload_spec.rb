describe 'realizando upload de arquivos', :upload do

    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/upload'

        @arquivo = Dir.pwd + '/spec/fixture/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixture/imagem.png'
    end

    it 'realizando upload de arquivo' do

        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        arq = find('#uploaded-file')
        expect(arq.text).to eql 'arquivo.txt'
    end 

    it 'realizando upload de imagem', :image do

        attach_file('file-upload', @imagem)
        click_button 'Upload'

        sleep 7
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/imagem.png'
    end

    after(:each) do

        sleep 3
    end
end