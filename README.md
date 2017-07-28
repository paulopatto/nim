# Estudos sobre nim-lang

- [Site oficial](https://nim-lang.org/)

`Nim` é uma linguagem de programação com a eficiencia do C (será?), expressividade do `Lisp` e elegancia do `Ptyhon`

```ruby
var 
  sum = 0
  count = 0

for line in stdin.lines:
  sum += line.len
  count += 1

echo("Average line length: ", if count > 0: sum / count else: 0)
```

### Container do docker

#### Pegando a ultima versão do container

[Repositório oficial](https://hub.docker.com/r/nimlang/nim/)

`$ docker pull nimlang/nim`

Ou a vesão de desenvolvimento

`$ docker pull nimlang/nim:devel`

#### Compilando arquivos

Compilando um arquivo:

```sh
docker run --rm -v $PWD:/usr/src/app -w /usr/src/app nimlang/nim nim c -r myfile.nim
```

Compulando um arquivo stático

```sh
docker run --rm -v $PWD:/usr/src/app -w /usr/src/app nimlang/nim:alpine nim c --passL:-static myfile.nim
```
