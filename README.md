### Básico

Texto de referência:
[BetterSpec](http://www.betterspecs.org/)

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

Indivual:
```zsh
  rspec spec/calcultaor/calcultaor_spec.rb -e 'numbers negatives' # ou
  rpesc spec/calcultaor/calcultaor_spec.rb:15 
```
