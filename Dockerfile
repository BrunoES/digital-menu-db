# Derivando da imagem oficial do MySQL
FROM mysql:5.7
# Adicionando os scripts SQL para serem executados na criação do banco

ARG --wait-timeout=28800

COPY ./scripts/ /docker-entrypoint-initdb.d/

EXPOSE 3306