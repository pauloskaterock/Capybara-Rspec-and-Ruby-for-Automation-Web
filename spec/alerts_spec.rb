describe ' alerta java script'  , :alert do 

    before(:each)  do  

        visit 'javascript_alerts'
    end

    it ' alert' do

        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'

        puts msg
        
    end


    it ' Sim confirma' do

        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        puts msg

        msg = page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        
    end

    it ' Não confirma' do

        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        puts msg
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        
    end

        it ' prompt' ,:accept do
            accept_prompt(with: 'Fernando') do
                click_button 'Prompt'
            end 
            expect(page).to have_content 'Olá, Fernando'

         end

    it ' prompt cancel' ,:acceptNull do

        click_button 'Prompt'

        # accept_prompt(with: 'Fernando') do
            
        # end 
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Qual o seu Nome?'
        page.driver.browser.switch_to.alert.dismiss
        #expect(page).to have_content 'Mensagem não confirmada'
        expect(page).to have_content 'Olá, null'

    end



end