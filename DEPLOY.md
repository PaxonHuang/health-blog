# 馨络智康博客部署指南

## 部署方式

### 方式一：手动部署

#### 1. 准备工作

确保你的系统已安装：
- Node.js >= 14.0.0
- Git

#### 2. 安装依赖

```bash
cd health-blog
npm install
```

#### 3. 本地测试

```bash
# 启动本地服务器
npm run server

# 访问 http://localhost:4000 查看效果
```

#### 4. 构建和部署

```bash
# 清理缓存
npm run clean

# 生成静态文件
npm run generate

# 部署到GitHub Pages
npm run deploy
```

### 方式二：GitHub Actions自动部署

#### 1. 创建GitHub仓库

1. 在GitHub上创建新仓库：`health-blog`
2. 将本地代码推送到仓库：

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/PaxonHuang/health-blog.git
git push -u origin main
```

#### 2. 配置GitHub Pages

1. 进入仓库设置页面
2. 找到 "Pages" 选项
3. 选择 "Deploy from a branch"
4. 选择 "gh-pages" 分支
5. 点击 "Save"

#### 3. 自动部署

每次推送到main分支时，GitHub Actions会自动：
1. 安装依赖
2. 构建项目
3. 部署到gh-pages分支

## 配置说明

### _config.yml 重要配置

```yaml
# 网站基本信息
title: 馨络智康 - 心理健康管理平台
subtitle: '双心疾病五音芳疗的开拓者'
description: '以专业心理评估为基础，结合传统五音疗法与现代芳疗技术，为您提供身心同治的健康管理方案'

# 部署配置
deploy:
  type: git
  repo: https://github.com/PaxonHuang/health-blog.git
  branch: gh-pages
```

### 自定义域名配置

如需使用自定义域名：

1. 在GitHub仓库设置中添加自定义域名
2. 在source目录下创建CNAME文件：

```
your-domain.com
```

## 内容管理

### 添加新文章

```bash
hexo new post "文章标题"
```

### 添加新页面

```bash
hexo new page "页面名称"
```

### 文章格式

```markdown
---
title: 文章标题
date: 2025-01-20 10:00:00
categories: 
  - 分类名称
tags:
  - 标签1
  - 标签2
---

文章内容...
```

## 主题定制

### 当前主题：landscape

如需自定义主题：

1. 在themes目录下创建新主题
2. 修改_config.yml中的theme配置
3. 自定义主题样式和布局

### 主题配置

```yaml
# 主题配置
theme: landscape

# 主题自定义配置
theme_config:
  # 自定义配置项
```

## 故障排除

### 常见问题

1. **部署失败**
   - 检查GitHub Token权限
   - 确认仓库名称正确
   - 检查分支名称

2. **页面显示异常**
   - 清理缓存：`hexo clean`
   - 重新生成：`hexo generate`
   - 检查文件路径

3. **依赖安装失败**
   - 清除npm缓存：`npm cache clean --force`
   - 删除node_modules：`rm -rf node_modules`
   - 重新安装：`npm install`

### 调试命令

```bash
# 查看Hexo版本
hexo version

# 查看帮助
hexo help

# 调试模式运行
hexo server --debug
```

## 性能优化

### 图片优化

1. 使用WebP格式图片
2. 压缩图片大小
3. 使用CDN加速

### SEO优化

1. 添加meta标签
2. 优化文章标题
3. 添加sitemap

### 缓存策略

1. 设置适当的缓存头
2. 使用CDN缓存
3. 优化静态资源

## 监控和维护

### 访问统计

- 使用Google Analytics
- 配置百度统计
- 监控页面性能

### 定期维护

- 更新依赖包
- 备份重要数据
- 检查链接有效性

## 联系支持

如遇到部署问题，请联系：

- **技术支持**：tech@xinluozhikang.com
- **文档地址**：https://hexo.io/docs/
- **GitHub Issues**：提交问题到仓库

---

*馨络智康，倾心遇康，守护您的身心安康* 