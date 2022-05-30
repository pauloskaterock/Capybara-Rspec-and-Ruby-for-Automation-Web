

describe ' caixa de seleção '  , :checkbox do 

    before(:each)  do  #BEFORE FAZ COM QUE O VISIT JA SEJA USADO PARA TODOS OS CENARIOS
        visit  'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end


    it ' marcando uma opção'  do
        check('thor')

    end


    it ' desmarcando uma opção'  do
        uncheck('antman')

    end


    it 'marcando uma opção com find, set, true'  do
        find('input[value=cap]').set true

    end


    it 'marcando uma opção com find, set, false'  do
        find('input[value=guardians]').set false

    end


    after(:each) do # AFTER DA 3 SEGUNDOS DE SLEEP EM TODOS OS CENARIOS
        sleep 3
    end 



end