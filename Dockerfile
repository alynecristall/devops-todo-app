# Usa uma imagem base do Node.js 14
FROM node:14-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o resto dos arquivos da aplicação
COPY . .

# Expõe a porta que a aplicação vai rodar
EXPOSE 3000

# Define o comando padrão para rodar a aplicação
CMD ["node", "app.js"]
