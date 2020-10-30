
describe 'suite rspec' do #Estrutura do teste Unitário

    it 'soma de valores' do
        soma = 10 + 5
        expect(soma).to eql 15 #Verifica igualdade
    end

end