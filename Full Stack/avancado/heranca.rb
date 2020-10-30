# -- Herança --

class Veiculo #(Classe pai)
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para iniciar o trajeto"
    end

    def buzinar
        puts "Deap! Deap!"
    end
end

class Carro < Veiculo #(herança - Classe filha)
    def dirigir
        puts "#{nome} iniciando o trajeto"
    end
end

class Moto < Veiculo #(herança - classe filha)
    def pilotar
        puts "#{nome} iniciando o trajeto"
    end
end

civic = Carro.new('Civic', 'honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar