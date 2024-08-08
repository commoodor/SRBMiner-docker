# Docker-SRBMiner-Multi

A Docker image for SRBMiner-Multi version 2.6.1.

For more information on SRBMiner-Multi, visit [SRBMiner-Multi GitHub](https://github.com/doktor83/SRBMiner-Multi).

## Quick Start with Docker Compose

To get started with SRBMiner-Multi using Docker Compose, use the following configuration:

## Here is a example to get going with a server using compose. ##
~~~
---
version: '3'
services:
# -------------------------------------------------------------------
  SRBMiner-Multi:
    tty: true
    image: commoodor/srbminer-docker
    restart: always
    environment:
      ALGO: verushash
      POOL_ADDRESS: stratum+tcp://ap.luckpool.net:3956
      WALLET_USER: RRmpZ1tajCXVG9999LWUD4CPVyZvjpe3iZ
      WORKER: Saturn
      PASSWORD: x
      EXTRAS:
# -------------------------------------------------------------------
~~~

## Environment Variables

| ** Variable name ** | **Description** | **Example Value** |
|---|---|---|
| ALGO | Algo you want to use | verushash |
| POOL_ADDRESS | The address on the pool you want to mine on | stratum+tcp://na.luckpool.net:3956#xnsub |
| WALLET_USER | This is ussally used as a user field or a wallet address field | RRmpZ1tajCXVG9999LWUD4CPVyZvjpe3iZ |
| WORKER | Your worker name | Saturn |
| PASSWORD | This is the password field | x |
| EXTRAS |  This is a field use to extra parameters | - |



Support Us

If you find this project useful and would like to support us, you can donate to the following addresses:

    BTC: bc1q3m9qxtaqzhzk0ay6e6dmxmz439n4f73zz0unqp
    ETH: 0x37A8997fBBa95cE12553745E2d6BA4F9Ae5Caa84
    DOGE: D5CiFXE5PvLn5fQKjCuovecExSNjGct5UU

Thank you for your support!

