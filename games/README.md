# 🎮 AI 遊戲合集（Mac 可直接執行）

| 檔案 | 遊戲 | 操作 |
|---|---|---|
| `station-fps.html` | **新宿站突襲 3D FPS**（Three.js 單檔） | WASD 移動、滑鼠瞄準、左鍵射擊、右鍵 ADS、R 換彈、Shift 衝刺、空白 跳、C 蹲、Esc 暫停 |
| `snake.html` | 貪食蛇 | 方向鍵 / WASD，空白鍵暫停 |
| `tetris.html` | 俄羅斯方塊 | ←→ 移動、↑ 旋轉、↓ 軟降、空白 硬降、P 暫停、Enter 開始 |
| `breakout.html` | 打磚塊 | ←→ 或滑鼠，空白鍵發球 |
| `space-shooter.html` | 太空射擊 | 方向鍵 / WASD 移動、空白鍵射擊、Enter 開始 |
| `flappy.html` | 飛翔小鳥 | 空白鍵 / 點擊 |
| `2048.html` | 2048 | 方向鍵 / WASD / 觸控滑動 |

2D 小遊戲完全離線可玩；`station-fps.html` 會從 jsDelivr CDN 載入 Three.js，第一次開啟需要網路。

## 新宿站突襲 3D FPS

參考零度解說〈Claude Opus 5.5 正式發布！真實案例演示〉中「Three.js 單檔 FPS、日本車站場景」的示範所做的原創版本：

- 場景：黃昏的新宿站雙月台、停靠的通勤電車、軌道與碎石、月台黃色導盲磚、柱子、販賣機、長椅、站名牌、LED 發車看板、窗外城市夜景（所有貼圖以 Canvas 程序化繪製）
- 槍械：自動步槍、後座力與擴散、右鍵瞄準鏡、換彈動畫、槍口火光與閃光照明、曳光彈、彈孔貼花與火花
- 敵人：人形 AI，會追擊、側移、點放射擊，玩家在月台上時會走到月台端的樓梯爬上來；命中閃紅、爆頭加分、倒地動畫
- 系統：波次、分數、擊殺播報、掉落彈藥與醫療包、受傷紅框、Web Audio 合成槍聲與日本車站風發車旋律

## 在 Mac 上執行

### 方法一：直接開啟（最簡單）

在 Finder 進入 `games` 資料夾，雙擊 `index.html`（或直接雙擊 `station-fps.html`），用 Chrome 或 Safari 開啟。

### 方法二：本機伺服器（雙擊啟動）

```bash
cd todo-web/games
chmod +x start-mac.command   # 只需第一次
```

之後在 Finder 雙擊 `start-mac.command`，會自動開啟 `http://localhost:8765`。
若出現「無法打開，因為來自未識別的開發者」：在檔案上按右鍵 →「打開」→「打開」。

### 方法三：終端機

```bash
cd todo-web/games
python3 -m http.server 8765
# 瀏覽器開啟 http://localhost:8765
```

## 延伸：社群公開的 Opus 5.5 one-shot 3D 遊戲原始碼

GitHub 上有社群公開的 Claude Opus 5.5 一句話生成 3D 遊戲（穿越火線·運輸船 FPS、QQ 飛車、鵜鶘騎單車）。這些專案不在本 repo 內（原專案未附授權條款），可以自行下載並在 Mac 上建置執行，需先安裝 [Node.js](https://nodejs.org/)（`brew install node`）：

```bash
git clone https://github.com/xiiyioozzz/opus55-3d-games.git
cd opus55-3d-games
node build-site.mjs              # 自動 npm install 並建置三款遊戲到 dist/
cd dist && python3 -m http.server 8766
# 瀏覽器開啟 http://localhost:8766
```

建置後的 `dist/transport-ship/index.html` 等檔案也可以直接雙擊開啟（單檔、無外部依賴）。
