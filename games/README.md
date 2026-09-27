# 🎮 AI 遊戲合集（Mac 可直接執行）

六款純 HTML + JavaScript 遊戲，不需要安裝任何套件、不需要網路。

| 檔案 | 遊戲 | 操作 |
|---|---|---|
| `snake.html` | 貪食蛇 | 方向鍵 / WASD，空白鍵暫停 |
| `tetris.html` | 俄羅斯方塊 | ←→ 移動、↑ 旋轉、↓ 軟降、空白 硬降、P 暫停、Enter 開始 |
| `breakout.html` | 打磚塊 | ←→ 或滑鼠，空白鍵發球 |
| `space-shooter.html` | 太空射擊 | 方向鍵 / WASD 移動、空白鍵射擊、Enter 開始 |
| `flappy.html` | 飛翔小鳥 | 空白鍵 / 點擊 |
| `2048.html` | 2048 | 方向鍵 / WASD / 觸控滑動 |

所有遊戲按 `Esc` 返回選單，最高分存在瀏覽器 localStorage。

## 在 Mac 上執行

### 方法一：直接開啟（最簡單）

1. 下載或 `git clone` 這個 repo
2. 在 Finder 中進入 `games` 資料夾
3. 雙擊 `index.html`，Safari / Chrome 就會開啟遊戲選單

### 方法二：用本機伺服器（雙擊啟動）

```bash
cd todo-web/games
chmod +x start-mac.command   # 只需第一次執行
```

之後在 Finder 雙擊 `start-mac.command`，會自動啟動 `http://localhost:8765` 並開啟瀏覽器。
第一次若出現「無法打開，因為來自未識別的開發者」，請在檔案上按右鍵 →「打開」→ 再按「打開」。

### 方法三：終端機

```bash
cd todo-web/games
python3 -m http.server 8765
# 瀏覽器開啟 http://localhost:8765
```

### 線上遊玩

若此 repo 有開啟 GitHub Pages，也可直接開啟 `https://<帳號>.github.io/todo-web/games/`。
