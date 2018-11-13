# Force build

UNPACKER1="is561c/MBS_unpacker"
UNPACKER2="is561c2/MBS_unpacker"
UNPACKER3="is561c3/MBS_unpacker"

for i in ${INPUT_DIR}/*.lmd.gz
do
    filename=$(basename "$i")
    f="${filename%%.*}"

    run_nr="$( cut -d '_' -f 1 <<< "$f" )"
    
    UNPACKER=$UNPACKER1
    if [ $run_nr -gt 217 ];
    then
	UNPACKER=$UNPACKER2;
    elif [ $run_nr -gt 206 ];
    then
	UNPACKER=$UNPACKER3;

    elif [ $run_nr -gt 203 ];
    then
	UNPACKER=$UNPACKER2;
    fi
    
    $UNPACKER $i --ntuple=RAW,${OUTPUT_DIR}/$f.root
done
