# 🚀 Docker-SRBMiner-Multi

<p align="center">
  <img src="https://img.shields.io/docker/pulls/commoodor/srbminer-docker?style=for-the-badge" />
  <img src="https://img.shields.io/docker/image-size/commoodor/srbminer-docker?style=for-the-badge" />
  <img src="https://img.shields.io/github/actions/workflow/status/commoodor/SRBMiner-docker/docker-publish.yml?branch=latest&style=for-the-badge" />
  <img src="https://img.shields.io/github/v/release/doktor83/SRBMiner-Multi?style=for-the-badge&label=Upstream%20Version" />
</p>

---

## 📦 About

A Docker image for **SRBMiner-Multi**.

🔄 **Upstream Version (auto-updated):**  
![Upstream Version](https://img.shields.io/github/v/release/doktor83/SRBMiner-Multi?label=Latest%20Release)

This image automatically tracks the latest release from:

👉 https://github.com/doktor83/SRBMiner-Multi

---

## ⚡ Quick Start (Docker Compose)

```yaml
version: '3.8'

services:
  SRBMiner:
    container_name: SRBMiner
    image: commoodor/srbminer-docker
    restart: unless-stopped
    tty: true
    mem_limit: 1g
    environment:
      ALGO: verushash
      POOL_ADDRESS: stratum+ssl://sg.vipor.net:5140
      WALLET_USER: RRmpZ1tajCXVG9999LWUD4CPVyZvjpe3iZ
      WORKER: Saturn
      PASSWORD: x
      EXTRAS:
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
