#!/bin/bash
# Menghentikan proses mining
if [ -f /tmp/ccminer ]; then
  kill $(cat /tmp/ccminer)
  rm /tmp/ccminer
fi