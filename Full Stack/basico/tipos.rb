# -- Tipos Ruby --
# o tipo de uma variável é definida no momento em que a mesma recebe o valor

produto = 'Macbook Air' #tipagem dinâmica
preço = 5999.99
quantidade = 10
disponível = true

puts produto
puts preço
puts quantidade
puts disponível

quantidade = '9'

puts produto.class # Apresenta o tipo
puts preço.class
puts quantidade.class
puts disponível.class