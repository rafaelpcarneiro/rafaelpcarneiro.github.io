#!/bin/bash
file=$1

pdftoppm  $1 -jpegopt quality=100 -jpeg ${file//.pdf/}

convert ${file//.pdf/-1.jpg} -transparent white -resize 200x200 ${file//pdf/png}
