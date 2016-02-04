#!/bin/bash

SRC=NS2015

rm -f $SRC.pdf

latex  $SRC
latex  $SRC
bibtex $SRC
bibtex $SRC
latex  $SRC
latex  $SRC

dvipdf $SRC

evince $SRC.pdf &
