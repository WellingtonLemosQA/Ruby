

class Conta
    attr_accessor :saldo

    def deposita(valor)
        self.saldo += valor
        #puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        puts "Depositando a quantia de #{valor} reais" #Interpolação de String
    end
end

#(self -> Invoca um recurso dentro da própria classe (=this))
c = Conta.new

c.saldo = 0.0 #Declara a variável
c.deposita(100.00)