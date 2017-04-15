for i in ${INPUT_DIR}/*.lmd.gz
do
    filename=$(basename "$i")
    f="${filename%%.*}"
    ${UNPACKER} $i --ntuple=RAW,${OUTPUTPUT_DIR}/$f.root
done
