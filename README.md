# Docker跨平台镜像构建模板
![Build Status](https://github.com/levixie2015/docker_image_build/actions/workflows/build.yml/badge.svg)
![Platforms](https://img.shields.io/badge/platforms-amd64%20%7C%20arm64-blue)
![Docker Image Size](https://img.shields.io/badge/image%20size-~300MB-blue)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/levixie2015/docker_image_build)
![License](https://img.shields.io/badge/license-MIT-green.svg)
> 一个基于GitHub Actions的Docker镜像自动构建模板，专门解决树莓派等ARM设备的Docker镜像获取难题，同时支持常规X86平台。本项目以MongoDB为例，展示如何构建跨平台Docker镜像。
##  🚀 特性
- ✅ 同时支持 AMD64 和 ARM64 架构
- 🔄 基于GitHub Actions的自动化构建
- 📦 使用GitHub Release分发，无需Docker Hub
- 🛡️ 完全开源，构建过程透明
- 🎯 通用模板，支持自定义应用

## 💡 项目背景
- 在为树莓派4B部署MongoDB时，我们遇到了两个主要问题：
- MongoDB官方没有提供ARM64版本的Docker镜像
- Docker Hub访问不稳定，影响开发进度
  
这个项目就是为了解决这些问题而创建的，并且可以推广到其他应用场景。

## 📋 支持的架构
| 架构 | 支持状态 | 适用设备 |
|------|----------|----------|
| AMD64 (x86_64) | ✅ | 常规PC、服务器 |
| ARM64 (aarch64) | ✅ | 树莓派4、AWS Graviton |

## 🚀 快速开始
1.下载对应架构的镜像
```
# AMD64架构
wget https://github.com/levixie2015/docker_image_build/releases/download/v1.0.0/mongodb-amd64.tar.gz

# ARM64架构
wget https://github.com/levixie2015/docker_image_build/releases/download/v1.0.0/mongodb-arm64.tar.gz
```
2.加载镜像
```
# AMD64架构
docker load < mongodb-amd64.tar.gz

# ARM64架构
docker load < mongodb-arm64.tar.gz
```
3.运行容器
```
docker run -d \
  --name mongodb \
  -p 27017:27017 \
  -v ~/mongodb/data:/data/db \
  mongodb:amd64  # 或 mongodb:arm64
```
## 📊 构建信息
| 架构 | 构建用时 | 镜像大小 |
|------|----------|----------|
| AMD64 | ~5分钟 | ~300MB |
| ARM64 | ~8分钟 | ~300MB |

## 🔧 自定义构建
1. Fork 本项目
2. 修改 Dockerfile 适配你的应用
3. 创建新的发布标签触发构建
```
git tag v1.0.0
git push origin v1.0.0
```
## 🌟 方案优势
1. 摆脱Docker Hub依赖
  - 完全基于GitHub基础设施
  - 构建和分发全程可控
多架构无缝支持
 - 一次配置，多平台使用
 - 自动识别目标架构
3. 开箱即用
  - 最小化配置要求
  - 详细的使用文档
4. 安全可靠
  - 源码完全开放
  - 构建过程透明

## 📝 License
MIT License

## 🤝 贡献
欢迎提交Issue和Pull Request！
- Issues: https://github.com/levixie2015/docker_image_build/issues
- Pull Requests: https://github.com/levixie2015/docker_image_build/pulls
---
相关链接：
- [最新发布](https://github.com/levixie2015/docker_image_build/releases/tag/v1.0.0)
- [构建状态](https://github.com/levixie2015/docker_image_build/actions)
- [项目Wiki](https://github.com/levixie2015/docker_image_build/wiki)
