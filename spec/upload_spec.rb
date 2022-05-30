describe ' upload '  , :upload do 

    before(:each)  do  

        visit 'https://training-wheels-protocol.herokuapp.com/upload'

        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'  #@arquivo é uma variavel de instancia
        @imagem = Dir.pwd + '/spec/fixtures/simpsons.png'
    end


    it 'upload do arquivo texto' do
    puts @arquivo  # nos traz o caminho do arquivo
    attach_file('file-upload' , @arquivo)
    click_button 'Upload'
    div_arquivo =  find('#uploaded-file')
    expect(div_arquivo.text).to eql 'arquivo.txt'

    end


    it 'upload da imagem' do
        
    puts @imagem
    attach_file('file-upload' , @imagem)
    click_button 'Upload'
    #sleep 5
    img = find('#new-image')
    expect(img[:src]).to include "/uploads/simpsons.png"  # outra forma de validação

        

    end

    after(:each) do 
        sleep 3
    end 

end