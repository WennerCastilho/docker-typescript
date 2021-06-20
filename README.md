## Para levantar o container na máquina utilizando container, digite os 2 comandos seguintes.

```sh
docker build -t <nome-da-aplicação> .
```

Exemplo:

```diff
- docker build -t <nome-da-aplicação> .
+ docker build -t docker-typescript .
```

<span>docker-typescript é o nome da aplicação, e o ponto refere ao diretório atual.</span>

```sh
docker run -it -p 3000:3000 -v $(pwd):/<workdir> <nome-da-aplicação>
```

Exemplo:

```diff
- docker run -it -p 3000:3000 -v $(pwd):/<workdir> <nome-da-aplicação>
+ docker run -it -p 3000:3000 -v $(pwd):/code docker-typescript
```

<span>-it é para habilitar o terminal iterativo, e ativar o Control + C por exemplo.</span>
<span>-p é para indicar a porta.</span>
<span>$(pwd) é um comando do linux para pegar o caminho do diretório atual.</span>
<span>workdir é o diretório que foi definido no Dockerfile.</span>
<span>E por fim, novamente o nome da aplicação.</span>

<span style="color: red">Caso ocorra algum erro ao rodar o container na porta 3000, digite os seguintes comandos no terminal:
</span>

```sh
docker container ls
```

<span>Isso irá listar todos os containers que estão ativos.</span>
<span>Caso tenha algum rodando na porta 3000, mate-o com o seguinte comando:</span>

```sh
docker kill <container-id>
```
