# Build dependencies
FROM node:18.14.2 as dependencies
WORKDIR /app
ENV PORT 8080
ENV HOST 0.0.0.0
COPY package.json .

# COPY ENV variable

# generated prisma files
COPY prisma ./prisma/
# COPY .env.development ./
COPY .env.production ./
COPY . .
RUN npm install

# Set NODE_ENV environment variable
ENV DATABASE_URL="mysql://root:@localhost:3306/tiketdb"
ENV NODE_ENV production

# Build production image
# FROM dependencies as builder
# RUN npm run build
EXPOSE 8080

# start command
CMD ["npm", "run", "start:prod"]