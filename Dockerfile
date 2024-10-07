# Use uma imagem base leve do Node.js
FROM node:14-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copie os arquivos package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código da aplicação para o diretório de trabalho
COPY . .

# Exponha a porta 3000 (a mesma que sua aplicação está usando)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "index.js"]
