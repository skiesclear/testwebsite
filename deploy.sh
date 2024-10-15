# 确保脚本抛出遇到的错误
set -e

# DL 笔记记录
cp -r D:\\app\\obsidian\\repository\\clearsky\\研究生入门\\DL D:\\Vue\\blog\\src\\posts
# RL 笔记记录
cp -r D:\\app\\obsidian\\repository\\clearsky\\研究生入门\\RL D:\\Vue\\blog\\src\\posts
# java 笔记记录
cp -r D:\\app\\obsidian\\repository\\clearsky\\JAVA D:\\Vue\\blog\\src\\posts

# 打包生成静态文件
npm run docs:build

# 进入打包好的文件夹
cd src/.vuepress/dist

# 创建git的本地仓库，提交修改
git init
git add -A
git commit -m 'deploy'

# 覆盖式地将本地仓库发布至github，因为发布不需要保留历史记录
# 格式为：git push -f git@github.com:'用户名'/'仓库名'.git master
git push -f git@github.com:skiesclear/skiesclear.github.io.git master

cd -

git add -A
git commit -m 'deploy-success'
git push -f git@github.com:skiesclear/skiesclear-page-code.git master