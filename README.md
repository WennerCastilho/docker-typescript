1 - docker build -t <nome-da-aplicação> .

2 - docker run -it -p 3000:3000 -v $(pwd):/<workdir> <nome-da-aplicação>
