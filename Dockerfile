# Base image: Node.js + Firebase CLI
FROM node:20

# Instala el Firebase CLI globalmente
RUN npm install -g firebase-tools

# Crea un directorio de trabajo
WORKDIR /app

# Copia el proyecto completo a /app
COPY . /app

# Expone un puerto para hosting local (opcional)
EXPOSE 8080

# Comando por defecto: deploy en Firebase
CMD ["sh", "-c", "firebase deploy --token $FIREBASE_TOKEN"]
