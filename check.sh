#!/bin/bash

PORT=30003

echo "[A3N] Starting server..."

SERVER_PID=$!

echo "[A3N] Server has just started (PID: $SERVER_PID). Now waiting for connections."
connected=0
while kill -0 $SERVER_PID 2>/dev/null; do
if [connected -eq 0 ]; then
              if ss -tn state established "( sport = :$PORT or dport = :$PORT )" 2>dev/null | grep -q ESTAB; then
                            echo ""
                            echo "--------------------------------"
                            echo " [A3N] Someone Has just joined. "
                            echo "--------------------------------"
                            echo ""
                            connected=1
              fi
fi
sleep 0.5
done

wait $SERVER_PID