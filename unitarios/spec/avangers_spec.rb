class AvengerHeadQuarter #Depois Desenvolva
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

#TDD (Desenvolvimento guiado por testes)
describe AvengerHeadQuarter do #Inicie criando o teste
  it "deve adicionar um vingador" do #Cenário
    hq = AvengerHeadQuarter.new

    hq.put("Spiderman")
    expect(hq.list).to include "Spiderman" #eql = igual a?
  end

  it "deve adicionar uma lista de vingadores" do #Cenário 2
    hq = AvengerHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")
    #expect(hq.list).to include 'Thor' #include = Contém?
    res = hq.list.size > 0 #Trás TRUE ou FALSE
    expect(hq.list.size).to be > 0 #size = Trás o total de registro numa lista
    expect(res).to be true #Se o resultado é verdadeiro
  end

  it "thor deve ser o primeiro da lista" do
    hq = AvengerHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")
    expect(hq.list).to start_with("Thor") #Verifica o primeiro da lista
  end

  it "Ironman deve ser o último da lista" do
    hq = AvengerHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")
    hq.put("Ironman")
    expect(hq.list).to end_with("Ironman") #Verifica o último da lista
  end

  it 'deve conter o sobrenome' do
    avenger = 'Peter Parker'
    expect(avenger).to match(/Parker/) #Expressão regular
    expect(avenger).not_to match(/Wellington/) #Verifca se não contém
  end
end
