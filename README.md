# ImmortalWrt (MTK 闭源驱动) for CMCC XR30

[![Build](https://github.com/RSxiaoyu/immortalwrt-xr30-mtk/actions/workflows/build.yml/badge.svg)](https://github.com/RSxiaoyu/immortalwrt-xr30-mtk/actions/workflows/build.yml)

**中国移动 CMCC XR30** 专属固件，采用 MediaTek **mt_wifi 闭源无线驱动**（原厂射频调优）。适合追求原厂信号特性、且不需要最新内核的场景。

## 上游

| 项 | 说明 |
|---|---|
| 上游源码 | [padavanonly/immortalwrt-mt798x-6.6](https://github.com/padavanonly/immortalwrt-mt798x-6.6) 分支 `openwrt-24.10-6.6`（Linux 6.6 + MTK SDK） |
| 设备支持 | `cmcc_xr30-nand` 为**上游内置设备**，本仓库零设备文件 |
| 本仓库内容 | `.config` 纯增量配置（MTK 驱动栈 + 配套工具，其余由 `make defconfig` 按上游默认展开）、`diy-part2.sh` 两行 sed（默认 IP 192.168.1.1、Argon 主题）、CI |

Release tag 按上游 commit 编址（`v24.10-<short_sha>`）：同一上游 commit 的重复构建原地更新既有 Release。

## 与开源方案的关系

闭源 mt_wifi 与开源 mt76 是二选一的路线。追求最新内核（6.12/6.18）、DSA 架构与 FIT 单镜像请用主仓库 [immortalwrt-xr30](https://github.com/RSxiaoyu/immortalwrt-xr30)。

## 硬件规格

| 项 | 规格 |
|---|---|
| SoC | MediaTek MT7981B（双核 Cortex-A53 @ 1.3GHz） |
| 内存 / 闪存 | 512MB DDR4 / 128MB SPI-NAND |
| 网口 / USB | 1× GE WAN + 3× GE LAN（MT7531AE）/ USB 3.0 |
| 无线 | 2.4G 574M + 5G 2402M @ 160MHz，MTK 原厂闭源驱动 |

## 刷写

1. [bl-mt798x-xr30](https://github.com/RSxiaoyu/bl-mt798x-xr30) U-Boot Web 恢复控制台（`192.168.1.1`）刷入，或运行系统内 sysupgrade
2. 管理：`192.168.1.1` ｜ `root` ｜ 默认无密码（请自行修改）
