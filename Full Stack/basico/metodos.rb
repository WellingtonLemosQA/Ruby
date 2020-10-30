# -- Funções --

def diga_ola(nome)
    puts 'Olá, ' + nome
end

diga_ola('Wellington')

# def retorna_nome 
#     'Wellington' #A última instrução será o retorno
# end

# resultado =  retorna_nome
# puts resultado

# -- Recebendo argumentos --

def soma(v1, v2)
    total = v1 + v2
    total
end

res = soma(10,25)
puts res