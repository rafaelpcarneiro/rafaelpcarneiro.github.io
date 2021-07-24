#!/bin/bash
file=$1

pdftoppm  $1 -jpegopt quality=100 -jpeg ${file//.pdf/}

#convert ${file//.pdf/-1.jpg} -transparent white -resize 1100x400 ${file//pdf/png}
convert ${file//.pdf/-1.jpg} -quality 100 ${file//pdf/png}
