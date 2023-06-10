# Derivando da imagem oficial do MySQL
#FROM mysql:5.7
FROM batlley/alpine-mysql:latest
# Adicionando os scripts SQL para serem executados na criação do banco
COPY ./scripts/ /docker-entrypoint-initdb.d/

EXPOSE 3306