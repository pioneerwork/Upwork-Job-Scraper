#!/bin/bash
# calebmwelsh/Upwork-Job-Scraper セットアップスクリプト
# 初回のみ実行してください

set -e

echo "=========================================="
echo "  Upwork Scraper セットアップ"
echo "=========================================="

# 仮想環境の作成
echo "[1/3] 仮想環境を作成中..."
python3 -m venv .venv
echo "  完了"

# 依存パッケージのインストール
echo "[2/3] パッケージをインストール中（数分かかります）..."
.venv/bin/pip install -r requirements.txt -q
echo "  完了"

# Playwrightブラウザのインストール（camoufox が必要とする）
echo "[3/3] ブラウザをインストール中..."
.venv/bin/python3 -m camoufox fetch
echo "  完了"

echo ""
echo "=========================================="
echo "  セットアップ完了！"
echo "=========================================="
echo ""
echo "次のステップ:"
echo "  1. .env ファイルを編集して Upwork の認証情報を設定してください:"
echo "     UPWORK_USERNAME=your_email@example.com"
echo "     UPWORK_PASSWORD=your_password"
echo ""
echo "  2. upwork_ecommerce_leads/ で以下を実行してください:"
echo "     .venv/bin/python3 run_live.py"
