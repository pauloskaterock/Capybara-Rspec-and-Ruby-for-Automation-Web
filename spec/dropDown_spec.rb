


describe 'caixa de opções' , :dropdown do

    it 'Item especifico' do
        visit 'dropdown'

        #select('opção' , from ,'elemento') codigo capybara
        select('Loki' , from: 'dropdown') #para elementos que possuem ID
        sleep 3
    end


    it 'Item especifico utilizando o find' do
        visit 'dropdown'

        
        drop = find('.avenger-list') 
        drop.find('option' , text: 'Scott Lang').select_option
        
        
        sleep 3
    end


    it 'qualque item aleatorio'  , :sample do  
        visit 'dropdown'

        
        drop = find('.avenger-list') 
        drop.all('option').sample.select_option
        
        
        sleep 3
    end


end