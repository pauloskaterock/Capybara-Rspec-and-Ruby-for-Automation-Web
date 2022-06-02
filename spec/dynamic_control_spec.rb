describe ' Controles dinamicos'  , :control do 

    before(:each)  do  

        visit 'dynamic_controls'
    end

     it 'quando habilita o campo' do

        # quando ha a propriedade disabled true, o campo esta desabilitado
        # quando nao tem propriedade disabled true, o campo esta habilitado

       has =  page.has_field? 'movie' , disabled: true
       puts has

       click_button 'Habilita'
       sleep 5

       has =  page.has_field? 'movie' , disabled: false
       puts has


    end


    


 

    after(:each) do 
        sleep 3
    end 

end