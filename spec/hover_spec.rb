describe ' Mouse Hovers'  , :hover do 

    before(:each)  do  

        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end


    it ' quando passo o mouse sobre o blade' do
        card = find('img[alt=Blade]')  #find('img[alt=blade]') atributo encontrado no HTML
        card.hover
        expect(page).to have_content 'Nome: Blade'

    end



    it ' quando passo o mouse sobre o pantera negra' do
        card = find('img[alt="Pantera Negra"]')  #find('img[alt=blade]') atributo encontrado no HTML
        card.hover
        expect(page).to have_content 'Nome: Pantera Negra'

    end


    it ' quando passo o mouse sobre o homem aranha' do
        card = find('img[alt="Homem Aranha"]')  #find('img[alt=blade]') atributo encontrado no HTML
        card.hover
        expect(page).to have_content 'Nome: Homem Aranha'

    end



    after(:each) do 
        sleep 3
    end 

end