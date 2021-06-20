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

# Possíveis Erros

## 1º - Porta 3000 já está em uso:

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

Exemplo:

```diff
- docker kill <container-id>
+ docker kill 4ce94542d350
```

## 2º - Permissão negada para executar o comando docker run:

<span>- Será necessário dar permissão de root ao arquivo .docker/entrypoint.sh</span>
<span>- Esse arquivo, é arquivo para ser executado diretamente no terminal, por esse motivo é necessário a permissão de root.</span>

<span>- Digite o seguinte comando para habilitar a permissão:</span>

```sh
sudo chmod +x .docker/entrypoint.sh
```

- Esse comando será necessário uma única vez.
