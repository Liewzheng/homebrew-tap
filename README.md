# Liewzheng's Homebrew Tap

自用 Homebrew Tap，用于集中管理个人发布的命令行工具。

## 使用方式

```bash
brew tap Liewzheng/tap
brew install review-engine
```

## 包含的软件

| 工具 | 说明 |
|---|---|
| [review-engine](https://github.com/Liewzheng/review-engine) | 代码审查 / MR Review 辅助工具 |

## 安装后配置（可选）

如果你使用自托管的 GitLab Runner，且该 Runner 使用自签名 TLS 证书，
`review-engine` 在调用 Runner 接口时可能会因为证书验证失败而出错。

此时需要把自签名 CA 证书加入系统信任：

### macOS

```bash
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain /path/to/your/ca.crt
```

### Linux (Debian/Ubuntu)

```bash
sudo cp /path/to/your/ca.crt /usr/local/share/ca-certificates/your-ca.crt
sudo update-ca-certificates
```

或者，如果 `review-engine` 支持通过环境变量禁用证书校验，请在配置文件中关闭校验（仅建议在内网环境使用）。

## 维护

本仓库通过 GitHub Actions / GoReleaser 自动从各项目 Release 同步更新 Formula。
