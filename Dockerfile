# Use the official Python image
FROM python:3

# Set the working directory inside the container
WORKDIR /app

# Copy requirements file first to leverage Docker caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code into the container
COPY . .

# Expose the port for the Django development server
EXPOSE 8000

# Set the default command to run the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

