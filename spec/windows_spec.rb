describe ' alternando Janelas'  , :windows do 

    before(:each)  do  

        visit 'https://training-wheels-protocol.herokuapp.com/windows'
    end

    it 'Nova Janela' do

        #click_link 'Clique aqui' clicando no link para abrir uma nova janela

        nova_janela = window_opened_by {click_link 'Clique aqui'}

        within_window -> {page.title == 'Nova Janela'}  do

            expect(page).to have_content 'Aqui temos uma nova janela \o/'

            nova_janela.close

            sleep 5

            expect(nova_janela.closed?).to be true

            puts nova_janela

           

        end
    end

end