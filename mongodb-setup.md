# MongoDB Local Setup for Windows

## Quick Installation Steps:

### 1. Download MongoDB
- Go to: https://www.mongodb.com/try/download/community
- Select: Windows x64, MSI package
- Download the installer

### 2. Install MongoDB
- Run the downloaded .msi file
- Choose "Complete" installation
- **IMPORTANT**: Check "Install MongoDB as a Service" 
- **IMPORTANT**: Check "Install MongoDB Compass" (GUI tool)
- Click Install

### 3. Verify Installation
Open Command Prompt and run:
```bash
mongod --version
```

### 4. Start MongoDB Service
MongoDB should start automatically. If not:
```bash
net start MongoDB
```

### 5. Test Connection
```bash
mongosh
```
This should connect to MongoDB. Type `exit` to quit.

## Your Connection String
Your `.env` file should have:
```
MONGODB_URI=mongodb://localhost:27017/shrishay-foundation
```

## Alternative: MongoDB Atlas (Cloud)
If local installation fails, use MongoDB Atlas:
1. Go to https://www.mongodb.com/cloud/atlas
2. Create free account
3. Create free cluster
4. Get connection string
5. Update .env with the Atlas connection string
