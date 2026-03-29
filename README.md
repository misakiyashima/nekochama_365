# 🐾 ねことわたし 365  
**愛猫の誕生日を登録し、猫年齢と人年齢を簡単に知るためのミニアプリ（MVP）**

ねことわたし 365 は、  
「愛しい猫の誕生日を記録し、成長をそばで感じたい」  
という思いから生まれた小さなアプリです。

現在は **猫の誕生日から猫年齢・人年齢を計算するアルゴリズムのみ実装した MVP 版** を公開しています。  
今後は複数のソーシャルログイン機能や、成長記録のような日記機能を追加していく予定です。

---

##  Motivation（アイディアの背景）

- 愛猫の誕生日を記録しておきたい  
- 猫年齢と人間年齢をすぐに知りたい  
- 成長を日記のように残せるアプリがあれば幸せ  
- 愛猫との日々をもっと大切に刻みたい  

そんな気持ちから、このアプリを作り始めました。

---

## Features（現在の機能）

- 猫の誕生日を入力すると  
  - **猫年齢**  
  - **人間年齢換算**  
  を自動計算  
- Rails 7.2 + MySQL によるシンプルな構成  
- MVP のため UI は最小限

---

## Tech Stack

| 項目 | 使用技術 |
|------|-----------|
| **Backend** | Ruby 3.2 / Rails 7.2.3 |
| **Database** | MySQL |
| **Frontend** | Hotwire (Turbo / Stimulus), jsbundling-rails, cssbundling-rails |
| **Auth（予定）** | Devise（未実装） |
| **その他** | bootsnap, jbuilder, debug, brakeman, rubocop-rails-omakase |

---

## System Dependencies

- Ruby 3.2.x  
- Rails 7.2.3  
- MySQL 8.x  
- Node.js & Yarn  
- esbuild（jsbundling-rails）  
- Git

---

## Setup（環境構築）

### 1. リポジトリをクローン
```bash
git clone https://github.com/misakiyashima/nekochama_365.git
cd nekochama_365
