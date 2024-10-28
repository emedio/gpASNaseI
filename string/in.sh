#!/bin/bash -f
rm -f group_file
folder=/gpfs/scratch/uv99/Milorad/string/1st_part_28_smallqm
N=96
for i in `seq 1 $N`; do
        sed "s/XXXXX/$RANDOM/g" template > $i.in
	echo "-O -rem 0 -i ${folder}/${i}.in -o ${folder}/$i.out -c ${folder}/structure_files/$i.rst -r ${folder}/$i.rst -x ${folder}/$i.mdcrd -inf ${folder}/$i.mdinfo -p ${folder}/00_prep/enzyme.prmtop" >> group_file
done
echo "N REPLICAS  = $i"
echo "Done."
