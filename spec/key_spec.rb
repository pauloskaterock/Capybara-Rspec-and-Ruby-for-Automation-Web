describe ' teclado' , :key do

    before(:each)  do  

        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it ' enviando teclas'  do



        teclas =  %i[tab escape space enter] #array de simbolos

        teclas.each do  | t | 
            
        find('#campo-id').send_keys t  
        
        expect(page).to have_content "You entered: " +t.to_s.upcase
        end

    end



    it ' enviando letras'  do



        teclas =  %w[a b c d e f ] #array de letras

        teclas.each do  | l | 
            
        find('#campo-id').send_keys l 
        
        expect(page).to have_content "You entered: " +l.to_s.upcase
        end

    end





end