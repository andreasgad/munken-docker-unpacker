for i in /data/*.lmd.gz
do
    filename=$(basename "$i")
    f="${filename%%.*}"
    /MBS-unpacker/mbs/MBS_unpacker $i --ntuple=RAW,/data/$f.root
done