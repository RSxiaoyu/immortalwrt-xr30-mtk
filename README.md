# ImmortalWrt (MTK 闭源驱动) for CMCC XR30

[![Build](https://github.com/RSxiaoyu/immortalwrt-xr30-mtk/actions/workflows/build.yml/badge.svg)](https://github.com/RSxiaoyu/immortalwrt-xr30-mtk/actions/workflows/build.yml)

中国移动 CMCC XR30 固件，集成 MediaTek mt_wifi 闭源原厂无线驱动。

## 上游

| 组件 | 上游 / 细节 |
|---|---|
| 源码基底 | [padavanonly/immortalwrt-mt798x-6.6](https://github.com/padavanonly/immortalwrt-mt798x-6.6) (`openwrt-24.10-6.6`, Linux 6.6 + MTK SDK) |
| 设备支持 | 上游已原生合入 `cmcc_xr30-nand`，无需额外设备树补丁 |
| 本仓库改动 | 约 100 行增量 `.config` 与 `diy-part2.sh` 两行脚本（修改默认 IP 为 `192.168.1.1`，启用 Argon 主题） |

Release tag 按上游 commit 编址（`v24.10-<short_sha>`），同一 commit 不重复发版。

## 方案对比

若需要主线内核 (6.12 / 6.18)、DSA 架构及 ImageBuilder 构建流程，参见主仓库 [immortalwrt-xr30](https://github.com/RSxiaoyu/immortalwrt-xr30)（开源 mt76 驱动）。本仓库提供 MediaTek 原厂闭源无线驱动支持。

## 硬件与刷写

- 硬件规格：MediaTek MT7981B (双核 1.3GHz)、512MB DDR4、128MB SPI-NAND、1× GE WAN + 3× GE LAN、1× USB 3.0
- 刷写方式：在 [bl-mt798x-xr30](https://github.com/RSxiaoyu/bl-mt798x-xr30) Web 恢复控制台 (`192.168.1.1`) 上传刷入，或在现有系统中执行 `sysupgrade`
- 默认后台：`http://192.168.1.1`（用户名：`root`，默认无密码）
