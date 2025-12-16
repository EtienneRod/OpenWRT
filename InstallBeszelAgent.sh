#! /bin/sh

Key="ssh-ed25519 123456"

killall -9 beszel-agent && rm -rf /tmp/beszel-agent;
curl -sL "https://github.com/henrygd/beszel/releases/latest/download/beszel-agent_Linux_mips.tar.gz" | tar -xz -O beszel-agent | tee /tmp/beszel-agent >/dev/null && chmod +x /tmp/beszel-agent;
sh -c "/tmp/beszel-agent -key $Key > /tmp/beszel-agent.log 2>&1" &

exit 0;
