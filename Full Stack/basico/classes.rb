# -- POO --
# ruby é uma linguagem considerada puramente orientada a objetos
# porque tudo é objeto

# -- Classe --
# uma classe possuí atributos e métodos
# características e ações

#Carro (Marca, Modelo, Cor, etc...)
#Ligar, businar, parar, etc...

class Carro #(Classe)
    attr_accessor :nome #(Atributo)

    def ligar #(Método)
        puts 'O carro está pronto para iniciar o trajeto'
    end
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.ligar
