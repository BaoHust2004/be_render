# Sử dụng hình ảnh Node.js làm cơ sở
FROM node:16

# Tạo thư mục ứng dụng
WORKDIR /app

# Copy file package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Copy mã nguồn vào container
COPY . .

# Chỉ định cổng mà ứng dụng sẽ chạy
EXPOSE 3000

# Lệnh để khởi động ứng dụng
CMD ["npm", "start"]
