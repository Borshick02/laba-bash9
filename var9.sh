#!/bin/bash

echo "Your number:"
read length
echo "Your number:"
read width
if ! [[ $length =~ ^[0-9]+$ ]] || ! [[ $width =~ ^[0-9]+$ ]]; then
echo "error: wrong format"
exit 1
fi
if ((length <= 0)) || ((width <= 0)); then
echo "error: wrong format"
exit 1
fi
perimeter=$((2*length + 2*width))
echo "Your Perimeter is: $perimeter"

