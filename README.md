# ImmortalWrt 24.10 for CMCC XR30 (MTK 闭源驱动)

[![Build](https://github.com/RSxiaoyu/immortalwrt-xr30-mtk/actions/workflows/build.yml/badge.svg)](https://github.com/RSxiaoyu/immortalwrt-xr30-mtk/actions/workflows/build.yml)

基于 [padavanonly/immortalwrt-mt798x-6.6](https://github.com/padavanonly/immortalwrt-mt798x-6.6) 的 **中国移动 CMCC XR30** 专属闭源驱动固件构建仓库。

## 特性
- **无线驱动**：采用联发科 MTK-SDK 原厂闭源 Wi-Fi 驱动（`mt7915_mtwifi`），原厂射频调优与漫游算法。
- **架构适配**：专为 [bl-mt798x-xr30](https://github.com/RSxiaoyu/bl-mt798x-xr30) `ubootmod` 打造，彻底废除 NMBM，原生 MTD 直通。
- **极简纯净**：预设轻量基础系统，无冗余软件包堆叠。
- **版本说明**：内核版本 Linux 6.6，适合追求原厂信号强度与特定 MTK 闭源特性的场景。（注：若需最新 Linux 6.12、DSA 架构与 All-in-FIT 单固件，请使用 [immortalwrt-xr30](https://github.com/RSxiaoyu/immortalwrt-xr30)）。

## 硬件规格
| 项 | 规格 |
| :--- | :--- |
| **SoC** | MediaTek MT7981B (双核 Cortex-A53 @ 1.3GHz) |
| **内存 / 闪存** | 512MB DDR4 / 128MB SPI-NAND |
| **网口 / USB** | 1 × GE WAN, 3 × GE LAN (MT7531AE) / 1 × USB 3.0 |
| **无线** | 2.4G (574M) + 5G (2402M @ 160MHz), MTK 原厂闭源驱动 |

## 刷写与使用
1. **升级固件**：在 [bl-mt798x-xr30](https://github.com/RSxiaoyu/bl-mt798x-xr30) U-Boot Web 恢复控制台 (`192.168.1.1`) 刷入；或在运行系统中通过 sysupgrade 升级。
2. **默认管理**：`192.168.1.1` ｜ 用户名：`root` ｜ 默认无密码。
