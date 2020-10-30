# -- Times --

5.times do |i|
    puts 'Repetindo a mensagem ' + i.to_s + ' vez(es)'
end

# (to_s -> Converte para String)

# -- While --

init = 0

while init <= 10 do
    puts 'Repetindo a mensagem ' + init.to_s + ' vez(es)'
    init += 1
end

# -- For --

for item  in (0...10)
    puts 'Repetindo a mensagem ' + item.to_s + ' vez(es)'
end

# -- Arrays

vingadores = ['Ironman', 'Hulk', 'Spiderman', 'Thor']

vingadores.each do |v| # For Each
    puts v
end