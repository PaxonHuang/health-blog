#!/bin/bash

# 馨络智康博客部署脚本

echo "开始部署馨络智康博客..."

# 清理缓存
echo "清理缓存..."
hexo clean

# 生成静态文件
echo "生成静态文件..."
hexo generate

# 部署到GitHub Pages
echo "部署到GitHub Pages..."
hexo deploy

echo "部署完成！"
echo "访问地址: https://paxonhuang.github.io/health-blog" 