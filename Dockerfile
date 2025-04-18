FROM mcr.microsoft.com/dotnet/runtime:8.0

WORKDIR /app

# Copy files to the app directory
COPY IntermediateBackend .
COPY BEProject.db .
COPY appsettings.json .

# Set permissions
RUN chmod +x ./IntermediateBackend

# Display directory contents for debugging
RUN ls -la

# Expose port 5002
EXPOSE 5002

# Use shell form of CMD to handle path issues
CMD ["./IntermediateBackend"]