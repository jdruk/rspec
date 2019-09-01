### Básico

Texto de referência:

+ [BetterSpec](http://www.betterspecs.org/)
+ [Relishap](https://relishapp.com/rspec/)

Iniciatlizar projeto Rspec em Ruby puro
```zsh
  rspec --init
```

Testes dentro de `spec/`, mas recomenda-se criar uma subpasta
com o nome de cada classe que quer testar. Exemplo `Calculator`

```zsh
mkdir -pv spec/calculator
touch spec/calcultaor/calculator_spec.rb # Note o sufixo SPEC 
```

Classes, módulos e demais arquivos dentro de `lib/`.
Exemplo: 'lib/calculator.rb'

```ruby
require 'calculator'

describe Calculator
  context '#sum' # Nomeclatura para métodos de instância
    it 'two numbers'
    ...
    end

    xit 'numbers negatives'
    ...   # xit ( skip test)
    end
  end

  context '.valides?' # Nomeclatura para métodos de classe
    it 'numbers valides'
    ...
    end
  end

end

```

Configuração de testes edite/crie arquivo .spec
```
  echo "\
  --require spec_help\n
  --format documentation\n" >> .spec
```


Execução de testes.


Todos:

```zsh
  rspec --format documentation
```

Individual:
```zsh
  rspec spec/calcultaor/calcultaor_spec.rb -e 'numbers negatives' # ou
  rpesc spec/calcultaor/calcultaor_spec.rb:15 

```

Lista de alias para `have_attributes`. [GIST](https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86)

### One line syntax `subject`.

Forma explícita:

```ruby
  describe "String" do
    it "#size" do
      expect(subject.size).to eq(5)
    end
  end
```

Forma implícita:

```ruby
  describe "String" do
    it "#size" do
      is_expected.to eq(5)
    end
  end
```

Outra forma interessante é a utilização do it com block.

```ruby
  describe "String" do
      it { is_expected.to eq(5) } # should equal 5
  end
```


### Adicionando Helper methods arbitrários

Crie uma pasta `helpers` no local mais conveniente para os testes.

Exemplo:

```zsh
mkdir -pv helpers
touch helpers/helper.rb
```
Em `helper.rb`

```ruby
  modulo Helper
  ...
    def funcao
    end
  end
```

Inclua no `spec_helper` o módulo em questão.

```ruby
  
  # Carregue o módulo
  require_relative '../helpers/helper.rb'

  RSpec.configure do |config|
    config.include Helper # Nome do módulo
    ...
  end
```

### Hooks
before/after depende do contexto a qual foram configuradas

Contexto de suíte de textes.

```ruby
  # Executa determinada função antes ou após a execução da suíte de testes
  before(:suite)
  after(:suite)

  # Dentro de spec_helper
  RSpec.configure do |config|
  ...
    before(:suite) do 
      # Levante banco de dados ou alguma coisa que os testes dependam
    end

    after(:suite) do
      # Desliga o banco de dados ou etc...
    end
    ...
  end
```

Contexto de arquivo de teste.

```ruby
  # Executa determinada função antes ou após a execução do arquivo de testes
  before(:all)
  before(:context) # Mesmo que :all
  after(:all)
  after(:context)

  # Dentro de spec_helper
  RSpec.configure do |config|
  ...
    before(:all) do 
      # Antes da execução do arquivo de testes ( para todos)
    end

    after(:context) do
      # Após a execução do arquivo de teste ( para todos) 
    end
    ...
  end
```

Contexto de unidade de teste.

```ruby
  # Executa determinada ação antes/após de cada unidade de teste
  before(:each)
  before(:example) # Mesmo que :each
  after(:each)
  after(:example)

  # Dentro de arquivo de teste 
  # Exemplo:
  # comparacao_spec.rb
  
  describe "Comparação" do 
  
    before(:each) do 
      # Antes da execução de cada teste ( para todos)
    end

    after(:example) do
      # Após a execução de cada teste ( para todos) 
    end
    ...
  end
```

Utilizando around, não é necessário declarar dois gatilhos (before/after). Circunda a operação, podendo
ser usado com as mesmas opções do before/after. (all,context, each, example, suite)

```ruby
  # comparacao_spec.rb
  
  describe "Comparação" do 
    around(:each) do |teste|
      puts "antes de cada teste"
      teste.run # executa o teste
      puts "após" # semelhante ao after
    end 
    ...
  end
```
