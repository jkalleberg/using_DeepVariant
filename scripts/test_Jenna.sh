#!/bin/bash
# test_Jenna.sh
echo "=== start > test_Jenna.sh" $(date)

echo "--- STATS input file: ${1}"

SAMPLE_ID=$(cat $1 | grep ^FLT | awk '{print $2}')

NUM_HETS=$(cat $1 | grep ^FLT | awk '{print $7}')

echo "SAMPLE ID: ${SAMPLE_ID} has Hets ${NUM_HETS}"
# rebekah's stuff goes here
echo "=== end > test_Jenna.sh" $(date)
