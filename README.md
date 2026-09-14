# ImmortalWrt (MTK 闭源驱动) for CMCC XR30

[![Build](https://github.com/RSxiaoyu/immortalwrt-xr30-mtk/actions/workflows/build.yml/badge.svg)](https://github.com/RSxiaoyu/immortalwrt-xr30-mtk/actions/workflows/build.yml)

**中国移动 CMCC XR30** 专属固件，采用 MediaTek **mt_wifi 闭源原厂无线驱动**。适合看重原厂射频调优与信号特性的场景。

## 上游

| 组件 | 上游 / 细节 |
|---|---|
| 源码基底 | [padavanonly/immortalwrt-mt798x-6.6](https://github.com/padavanonly/immortalwrt-mt798x-6.6) (`openwrt-24.10-6.6`, Linux 6.6 + MTK SDK) |
| 设备支持 | `cmcc_xr30-nand` 为上游已合入原生设备，本仓库零设备级补丁 |
| 本仓库改动 | 约 100 行纯增量 `.config` + `diy-part2.sh` 两行 sed (默认 IP `192.168.1.1`、Argon 主题) |

Release tag 按上游 commit 编址（`v24.10-<short_sha>`），同一 commit 不重复发版。

## 方案选型

- **开源 mt76 路线**：追求最新内核 (6.12/6.18)、DSA 架构、FIT 单镜像与 ImageBuilder 极速构建，请使用主仓库 [immortalwrt-xr30](https://github.com/RSxiaoyu/immortalwrt-xr30)。
- **闭源 mt_wifi 路线**（本仓库）：追求 MTK 原厂无线驱动性能与信号表现。

## 硬件与刷写

- **硬件**: MT7981B (双核 1.3GHz) / 512MB DDR4 / 128MB SPI-NAND / 1× WAN + 3× LAN / USB 3.0
- **刷写**: [bl-mt798x-xr30](https://github.com/RSxiaoyu/bl-mt798x-xr30) Web 恢复控制台 (`192.168.1.1`) 刷入，或在运行系统中执行 `sysupgrade`
- **后台**: `192.168.1.1` ｜ 用户名：`root` ｜ 默认无密码
