# 馨络智康心理健康管理平台博客

## 项目简介

这是一个基于Hexo框架构建的心理健康管理平台博客站点，整合了健康心桥和馨络智康的服务内容，为用户提供心理健康知识科普、服务介绍和专业资讯。

## 功能特色

- **心理健康知识科普**：提供专业的心理健康知识
- **服务介绍**：详细介绍平台各项服务功能
- **专业文章**：发布心理健康相关专业文章
- **响应式设计**：支持各种设备访问
- **SEO优化**：针对搜索引擎优化

## 技术栈

- **Hexo 7.0**：静态博客生成器
- **Node.js**：运行环境
- **GitHub Pages**：部署平台
- **Markdown**：内容编写

## 本地开发

### 环境要求

- Node.js >= 14.0.0
- Git

### 安装依赖

```bash
npm install
```

### 本地运行

```bash
# 启动开发服务器
npm run server

# 或者使用hexo命令
hexo server
```

访问 http://localhost:4000 查看效果

### 构建部署

```bash
# 清理缓存
npm run clean

# 生成静态文件
npm run generate

# 部署到GitHub Pages
npm run deploy
```

## 项目结构

```
health-blog/
├── _config.yml          # Hexo配置文件
├── package.json         # 项目依赖配置
├── source/              # 源文件目录
│   ├── _posts/         # 博客文章
│   ├── about/          # 关于我们页面
│   └── images/         # 图片资源
├── themes/             # 主题目录
└── public/             # 生成的静态文件
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

每篇文章需要包含Front-matter：

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

## 部署说明

### GitHub Pages部署

1. 在GitHub上创建仓库：`health-blog`
2. 配置GitHub Pages，选择gh-pages分支
3. 运行部署命令：

```bash
npm run deploy
```

### 自定义域名

如需使用自定义域名，请在仓库设置中配置。

## 主题定制

当前使用landscape主题，如需自定义主题：

1. 在themes目录下创建新主题
2. 修改_config.yml中的theme配置
3. 自定义主题样式和布局

## 贡献指南

1. Fork本项目
2. 创建功能分支
3. 提交更改
4. 发起Pull Request

## 联系方式

- **邮箱**：contact@xinluozhikang.com
- **电话**：400-123-4567
- **地址**：北京市朝阳区健康路88号馨络智康中心

## 许可证

MIT License

---

*馨络智康，倾心遇康，守护您的身心安康* 