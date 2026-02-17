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
```

---

## 🛠 Environment Variables

| Variable        | Description              | Example                                      |
|----------------|--------------------------|----------------------------------------------|
| `ALGO`         | Mining algorithm         | `verushash`                                  |
| `POOL_ADDRESS` | Mining pool address      | `stratum+tcp://na.luckpool.net:3956#xnsub`    |
| `WALLET_USER`  | Wallet address or user   | `RRmpZ1tajCXVG9999LWUD4CPVyZvjpe3iZ`           |
| `WORKER`       | Worker name              | `Saturn`                                     |
| `PASSWORD`     | Pool password            | `x`                                          |
| `EXTRAS`       | Extra SRBMiner flags     | `-t 4`                                       |

---

## ❤️ Support Development

<p align="center">
  <a href="https://github.com/sponsors/commoodor">
    <img src="https://img.shields.io/badge/Sponsor-GitHub%20Sponsors-ff69b4?style=for-the-badge&logo=githubsponsors&logoColor=white" />
  </a>
</p>

<details>
<summary>💰 Click to view donation addresses</summary>

<br>

<p align="center">

<img src="https://img.shields.io/badge/Bitcoin-ff9900?style=for-the-badge&logo=bitcoin&logoColor=white" />
<br/>
<code>bc1q3m9qxtaqzhzk0ay6e6dmxmz439n4f73zz0unqp</code>

<br><br>

<img src="https://img.shields.io/badge/Ethereum-627eea?style=for-the-badge&logo=ethereum&logoColor=white" />
<br/>
<code>0x37A8997fBBa95cE12553745E2d6BA4F9Ae5Caa84</code>

<br><br>

<img src="https://img.shields.io/badge/Dogecoin-c2a633?style=for-the-badge&logo=dogecoin&logoColor=white" />
<br/>
<code>D5CiFXE5PvLn5fQKjCuovecExSNjGct5UU</code>

</p>

</details>

---

## 📜 License

This project redistributes official **SRBMiner-Multi** binaries.  
Please refer to the upstream repository for full license details:

👉 https://github.com/doktor83/SRBMiner-Multi

---

<p align="center">
  Built for performance • Optimized for Docker • Dark mode ready 🌙
</p>
