#!/usr/bin/env sh

# 當發生錯誤時終止腳本運行
set -e

# 打包編譯
npm run build

# 移動至到打包後的dist目錄 
cd dist

# 因為 dist 資料夾預設是被 ignore 的，因此在進入dist資料夾後初始化 git
git init 
git add -A
git commit -m 'deploy'

# 將 dist 資料夾中的內容推送至遠端數據庫的 的 gh-pages 分支中，並強制無條件將舊有的內容取代成目前的內容（指令 git push -f)
# 分支名稱會叫 gh-pages 是因為 Github 在部署時只允許三種來源 (master, gh-pages, master/docs)
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

git push -f https://github.com/codewarrior1992/newebpay.git master:gh-pages

# cd
cd -
