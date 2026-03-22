# Use Python image
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8000

# Run server
CMD ["gunicorn", "mysite.wsgi:application", "--bind", "0.0.0.0:8000"]