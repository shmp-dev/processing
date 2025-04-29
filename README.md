# Processing

## ディレクトリの構造
.  
├── .gitignore          # Gitで無視するファイルを指定  
├── .vscode/            # VSCodeの設定ファイルを格納  
│   └── tasks.json      # VSCodeでProcessingをビルド・実行するためのタスク設定  
├── out/                # ビルドの出力先（Git管理対象外）  
├── processing.pde      # メインのProcessingスケッチファイル  
├── README.md           # プロジェクトの説明書  
└── sketch/             # 作成したコードを保存するディレクトリ  
    └── assignment_1-1.pde  


## 環境構築

### Processing IDE を直接使用する場合
1. Processing 4.4.1 (Stable) をインストール
   1. [公式ダウンロードサイト](https://processing.org/download)

### VSCode を使用する場合
1. Processing 4.4.3 (Beta) をインストール
   1. [ここから](https://github.com/processing/processing4/releases/tag/processing-1303-4.4.3)
   2. Mac の場合、`processing-4.4.3-macos-aarch64.dmg`をダウンロード
   3. NOTE: 4.4.1 (Stable)の場合、`processing-java`にバグがあるため、VSCodeで動かすためには最新Betaを使用する（必要なければStableを使用で良い）
2. processing-java をインストール
   1. processing.app を実行
   2. メニューバーから、[ツール]->["processing-java"をインストール] をクリック
   3. `/usr/local/bin/processing-java` にCLIがインストールされる
3. VSCodeの準備
   1. VSCode拡張機能をインストール
      1. `Processing Language`
   2. `task.json`を生成
      1. プロジェクトのルートに、`processing.pde`空ファイルを作成しておく
      2. コマンドパレットを開き、`Processing: Create Task File`を実行
   3. VSCodeの設定に、`processing-java`のパスを記載する
      1. 設定の`Processing: Path`に、`/usr/local/bin/processing-java`を記載
4. ビルド実行
   1. `ctl+shift+B`で実行できる
