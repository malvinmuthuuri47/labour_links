#!/bin/bash
# LabourLinks Website Launcher for Linux/Mac
# Updated with better error handling and reliability

# Check for PHP
if ! command -v php &> /dev/null; then
    echo -e "\033[1;31mERROR: PHP is not installed\033[0m"
    echo "Install using:"
    echo "  Ubuntu/Debian: sudo apt install php"
    echo "  MacOS: brew install php"
    echo "  CentOS/RHEL: sudo yum install php"
    exit 1
fi

# Kill any existing PHP servers
pkill -f "php -S" 2>/dev/null || true

# Start PHP server
echo -e "\033[1;32mStarting PHP server on port 3308...\033[0m"
php -S 0.0.0.0:3308 -t ./ &
SERVER_PID=$!

# Wait for server to start
sleep 3

# Verify server is running
if ! curl -s http://localhost:3308 >/dev/null; then
    echo -e "\033[1;31mFailed to start PHP server\033[0m"
    kill $SERVER_PID 2>/dev/null
    exit 1
fi

# Open browser
echo -e "\033[1;32mOpening website...\033[0m"
case "$(uname -s)" in
    Linux*)  xdg-open "http://localhost:3308/landing.html" ;;
    Darwin*) open "http://localhost:3308/landing.html" ;;
    *)       echo "Please open manually: http://localhost:3308" ;;
esac

# Display status
echo -e "\n\033[1;34mLabourLinks is running at:\033[0m"
echo "http://localhost:3308"
echo -e "\nPress Ctrl+C to stop server"
wait $SERVER_PID

# Changes made to the bash script
# The url routes are now pointing to landing.html rather than index.html
# Also, make sure thet when running the php server, the ports are open.