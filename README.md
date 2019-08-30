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



