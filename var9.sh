    #!/bin/bash

    if [[ $1 == "--help" ]]; then
    echo "This script calculates the perimeter of a rectangle."
    echo "Usage: ./perimeter.sh [length] [width]"
    exit 0
    fi

    echo "Your Length:"
    read length
    echo "Your Width:"
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
