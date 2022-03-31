for d in /home/tom/tesi/MCSHeuristicCpp/text_ben/minibatch/* ; do
    a=($(echo "$d" | tr '/' '\n'));
    mod="${a[6]}"
    ext="${mod: -2}"
    mod="${mod::-2}"
    g1="$mod.A$ext"
    g2="$mod.B$ext"
    g1p=$(find -name $(echo "$g1"))
    g2p=$(find -name $(echo "$g2"))     

    /home/tom/tesi/MCSHeuristicCpp/v0.1_trimble_seq_cpp/prog min_max norm -t 3000 $g1p $g2p /home/tom/tesi/MCSHeuristicCpp/minibatch_vectors/precomputed_vectors_norm_H6 /home/tom/tesi/MCSHeuristicCpp/minibatch_results/norm_H6
done
