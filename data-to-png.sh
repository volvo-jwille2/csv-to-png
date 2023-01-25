#!/bin/bash
perl data-to-svg.pl
qlmanage -t -f 1 -o . *.svg