

describe ' caixa de seleção '  , :radio do 

    before(:each)  do  #BEFORE FAZ COM QUE O VISIT JA SEJA USADO PARA TODOS OS CENARIOS
        visit  'radios'
    end


    it ' seleção por ID'  do
        choose('cap')

    end


    it ' seleção por find e CSS selector'  do
        find('input[value=guardians]').click

    end


  


    after(:each) do # AFTER DA 3 SEGUNDOS DE SLEEP EM TODOS OS CENARIOS
        sleep 3
    end 

end