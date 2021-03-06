describe 'forms' , :ph do


    it ' login with sucess'  do

        visit "login" 


        fill_in 'username' , with: 'stark' # inspeiconado pode-se usar varios atributos

        fill_in 'password' , with: 'jarvis!'

        click_button 'Login'

       #puts  find('#flash').visible?
       expect(find('#flash').visible?).to be true

     expect(find('#flash').text). to include 'Olá, Tony Stark. Você acessou a área logada!'

     expect(find('#flash')).to have_content  'Olá, Tony Stark. Você acessou a área logada!'

     #tipos de validações EQL > TO INCLUDE  > HAVE_CONTENT

     #page.save_screenshot('log/login_com_sucesso.png')

    end
    it 'Cenario com a senha incorreta' do

        visit "login" 

        fill_in 'username' , with: 'stark'

        fill_in 'password' , with: 'fuck123'

        click_button 'Login'

       #puts  find('#flash').visible?
       expect(find('#flash').visible?).to be true

     #expect(find('#flash').text). to include 'Olá, Tony Stark. Você acessou a área logada!'

     expect(find('#flash')).to have_content  'Senha é invalida!'

     #page.save_screenshot('log/login_invalida.png')

    end

     it ' Cenario com usuário não cadastrado' do

        visit "login" 

        fill_in 'username' , with: 'ph@ph.com'

        fill_in 'password' , with: 'fuck'

        click_button 'Login'

       #puts  find('#flash').visible?
       expect(find('#flash').visible?).to be true

     #expect(find('#flash').text). to include 'Olá, Tony Stark. Você acessou a área logada!'

     expect(find('#flash')).to have_content  'O usuário informado não está cadastrado!'

    # page.save_screenshot('log/login_usuario_nao_cadastrado.png') obtendo o screenshot

     end
     

end