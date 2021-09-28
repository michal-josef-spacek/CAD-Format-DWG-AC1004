#!/bin/sh

KSY_FILE=dwg_ac1004.ksy
OUTPUT_PM_FILE=AC1004.pm

ksc -t perl $KSY_FILE
mv DwgAc1004.pm $OUTPUT_PM_FILE
sed -i s/DwgAc1004/CAD::Format::DWG::AC1004/g $OUTPUT_PM_FILE
