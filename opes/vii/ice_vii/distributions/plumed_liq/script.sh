export LC_NUMERIC="C"
for sigma in `seq 0.01 0.01 0.19`
do
    sed "s/replace/$sigma/g" plumed-base.dat > plumed.dat
    
    plumed driver --plumed plumed.dat --mf_dcd out.dcd > plumed.out
    
    cp histo histo-$sigma
    cp COLVAR COLVAR-$sigma
done
