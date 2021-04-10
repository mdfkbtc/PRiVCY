#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.privcycore/privcyd.pid file instead
privcy_pid=$(<~/.privcycore/testnet3/privcyd.pid)
sudo gdb -batch -ex "source debug.gdb" privcyd ${privcy_pid}
