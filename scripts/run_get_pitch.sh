#!/bin/bash

# Put here the program (maybe with path)
GETF0="get_pitch"
GETF0="albino/pp/get_pitch -1 -1"

for fwav in pitch_4kHz/train/*.wav; do
    echo "$fwav ----"
    ff0=${fwav/.wav/.f0}
    $GETF0 $fwav $ff0 > /dev/null || (echo "Error in $GETF0 $fwav $ff0"; exit 1)
done

exit 0
