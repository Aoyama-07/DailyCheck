# DailyCheck 技术选型 & 架构

## 1. 客户端
| 层 | 技术 | 理由 |
|---|---|---|
| UI | ArkTS + ArkUI | 鸿蒙原生，性能好 |
| 状态管理 | @State / @Link / AppStorage | 轻量、无需 Redux |
| 路由 | Navigation + Tabs | 官方支持，转场动画简单 |
| 本地存储 | relational_store (RDB) | 单用户、SQL 易查 |
| 媒体 | @ohos.multimedia.image | 官方拍照/压缩 |
| 通知 | @ohos.notificationManager | 本地提醒无依赖 |
| 加密 | cryptoFramework AES-256-GCM | 系统内置，零依赖 |

## 2. DevOps
| 工具 | 用途 |
|---|---|
| GitHub | 源码 & Issue 追踪 |
| ohpm | 包管理（鸿蒙 npm） |
| SmartPerf | 性能分析 |
| AppGallery Connect | 上架 & 崩溃日志 |

## 3. 约束
- 包体积 ≤ 25 MB
- 首帧 < 500 ms
- 不连后台服务器，纯本地   