# Sử dụng image chính thức của Node.js
FROM node:14-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /usr/src/app

# Copy file index.js vào container
COPY index.js .

# Expose cổng 3000 (hoặc cổng mà ứng dụng của bạn sử dụng)
EXPOSE 3000

# Chạy ứng dụng Node.js
CMD ["node", "index.js"]
