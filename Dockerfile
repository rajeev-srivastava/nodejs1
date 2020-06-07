# Install the application
ADD package.json /app/package.json
RUN cd /app && npm install
COPY app.js /app/app.js
RUN mkdir /app/public
COPY /public/ /app/public/
WORKDIR /app
ENV PORT 8080
EXPOSE 8080
# Define command to run the application when the container starts
CMD ["node", "app.js"]