#Busca a imagem
FROM python:3.6

#seta o criador
LABEL maintainer="Fabrício Pinheiro"

#Adicionar user - && concateca varios comandos bash(terminal)
RUN useradd www && \
    mkdir /app && \
    mkdir /log &&\ 
    chown www / log
    #chow o dono da pasta log

#quem será o usuário ativo     
USER www

#volume pode ser acessado por outros container
VOLUME /log
#diretório de trabalho
WORKDIR /app
#expondo port
EXPOSE 8000

#ponto de entrada, o processo que será iniciado. Caminho onde o python está instalado
ENTRYPOINT ["/user/local/bin/python"]
#chamar o python e execute o run,py
CMD ["run.py"]