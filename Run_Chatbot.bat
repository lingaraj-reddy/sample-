@echo off
echo Starting Darukaa.Earth Chatbot Backend...
cd api
start /B python index.py
cd ..

echo Starting Chatbot Frontend...
cd public
timeout /t 2 >nul
start http://localhost:3000
python -m http.server 3000
cd ..
