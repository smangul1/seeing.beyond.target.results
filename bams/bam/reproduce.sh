

mkdir WXS
cd WXS
while read line
do
ln -s ../../*/${line}.bam
ln -s ../../*/${line}.bam.bai
done</u/home/s/serghei/code/seeing.beyond.target.results/outcomes/WXS.fileNames.txt

find -L $DIR -maxdepth 1 -type l -delete 


cd ..
mkdir RNA.Seq
cd RNA.Seq

while read line
do
ln -s ../../*/${line}.bam
ln -s ../../*/${line}.bam.bai
done</u/home/s/serghei/code/seeing.beyond.target.results/outcomes/RNA.Seq.fileNames.txt 


find -L $DIR -maxdepth 1 -type l -delete



