describe 'select 2 '  , :select do 


    describe 'select sinlgle' ,:single  do

            before(:each)  do  

                visit 'apps/select2/single.html'
            
            end

            it 'seleciona ator por nome' do

                find('.select2-selection--single').click
                sleep 7
               find('.select2-results__option', text: 'Adam Sandler').click
                #find('.select2 select2-container select2-container--default', text: 'Adan Sandler').click
                sleep 5
            end




            it 'pesquisa ator por nome' do

                find('.select2-selection--single').click
                sleep 7
               find('.select2-search_field').set 'Chris Rock'
               
               find('.select2-results__option').click
               sleep 5
            end

        

    end


















    describe 'select 2 multiple'  , :multiple do 

    before(:each)  do  

        visit 'apps/select2/multi.html'
    end

    def seleciona(ator)  #metodo

        find('.select2-selection--multiple').click
       
        find('.select2-selection__rendered').set ator
        
        find('.select2-selection__rendered').click     


    end

    it 'seleciona atores' do

        atores = [ 'Jim Carrey', 'Owen Wilson', 'Kevin James']  #array

                atores.each do  |a|
                    seleciona (a)
                end
        end
    end

end