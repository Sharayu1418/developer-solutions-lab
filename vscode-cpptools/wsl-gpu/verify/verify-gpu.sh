set -e

echo "Checking dxg device..."
ls -l /dev/dxg || echo "dxg missing"

echo "Checking kernel messages..."
dmesg | grep -i dxg || echo "dxg not in dmesg"