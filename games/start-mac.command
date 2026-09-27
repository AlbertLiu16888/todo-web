#!/bin/bash
# Double-click in Finder to launch the game hub on macOS.
# Starts a local web server in this folder and opens the launcher page in the default browser.
cd "$(dirname "$0")" || exit 1

PORT=8765
URL="http://localhost:$PORT/index.html"

if ! command -v python3 >/dev/null 2>&1; then
  echo "找不到 python3，直接用瀏覽器開啟 index.html"
  open "index.html"
  exit 0
fi

echo "🎮 遊戲伺服器啟動中：$URL"
echo "   關閉此視窗或按 Ctrl+C 即可停止"
(sleep 1 && open "$URL") &
python3 -m http.server "$PORT" --bind 127.0.0.1
