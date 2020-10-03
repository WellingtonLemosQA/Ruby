# -- Exceções --

#(try cat)
begin 
    # Devo tentar alguma coisa
    file = File.open('./ola') #(Com erro)
    #file = File.open('./ola.txt') #(Sem erro)
    if file
        puts file.read
    end
rescue Exception => e
    # Obter um possível erro
    puts e
    puts e.backtrace #(msg mais detalhada)
end

# -- Método + Excessão --

def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts e.message #(msg padrão)
    puts 'Erro ao executar a soma.'
end

soma("10", 5)