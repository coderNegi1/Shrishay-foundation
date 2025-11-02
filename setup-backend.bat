@echo off
echo ========================================
echo Shrishay Foundation Backend Setup
echo ========================================
echo.

cd backend

echo Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo Failed to install dependencies
    exit /b %errorlevel%
)

echo.
echo Creating .env file from example...
if not exist .env (
    copy .env.example .env
    echo .env file created. Please edit it with your configuration.
) else (
    echo .env file already exists.
)

echo.
echo Creating upload directories...
if not exist uploads\images mkdir uploads\images
if not exist uploads\videos mkdir uploads\videos
echo Upload directories created.

echo.
echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Edit backend\.env file with your MongoDB connection and secrets
echo 2. Make sure MongoDB is running
echo 3. Run: cd backend ^&^& npm run seed (to create admin user)
echo 4. Run: cd backend ^&^& npm run dev (to start the server)
echo.
pause
