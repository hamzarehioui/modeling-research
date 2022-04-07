gcc -o mcodeinc mcodeinc\ copy.c
touch mcodeinc.txt
./mcodeinc >> mcodeinc.txt
echo trial 1 C merge
./mcodeinc >> mcodeinc.txt
echo trial 2 C merge
./mcodeinc >> mcodeinc.txt
echo trial 3 C merge
./mcodeinc >> mcodeinc.txt
echo trial 4 C merge

touch mcodeinpy.txt
python mcodeinpy\ copy.py >> mcodeinpy.txt
echo trial 1 py merge
python mcodeinpy\ copy.py >> mcodeinpy.txt
echo trial 2 py merge
python mcodeinpy\ copy.py >> mcodeinpy.txt
echo trial 3 py merge
python mcodeinpy\ copy.py >> mcodeinpy.txt
echo trial 4 py merge

touch mcodeinrkt.txt
racket mcodeinrkt\ copy.rkt >> mcodeinrkt.txt
echo trial 1 rkt merge
racket mcodeinrkt\ copy.rkt >> mcodeinrkt.txt
echo trial 2 rkt merge
racket mcodeinrkt\ copy.rkt >> mcodeinrkt.txt
echo trial 3 rkt merge
racket mcodeinrkt\ copy.rkt >> mcodeinrkt.txt
echo trial 4 rkt merge

gcc -o codeinc codeinc\ copy.c
touch codeinc.txt
./codeinc >> codeinc.txt
echo trial 1 C bubble
./codeinc >> codeinc.txt
echo trial 2 C bubble
./codeinc >> codeinc.txt
echo trial 3 C bubble
./codeinc >> codeinc.txt
echo trial 4 C bubble

touch codeinpy.txt
python codeinpy\ copy.py >> codeinpy.txt
echo trial 1 py bubble
python codeinpy\ copy.py >> codeinpy.txt
echo trial 2 py bubble
python codeinpy\ copy.py >> codeinpy.txt
echo trial 3 py bubble
python codeinpy\ copy.py >> codeinpy.txt
echo trial 4 py bubble


touch codeinrkt.txt
racket codeinrkt\ copy.rkt >> codeinrkt.txt
echo trial 1 rkt bubble
racket codeinrkt\ copy.rkt >> codeinrkt.txt
echo trial 2 rkt bubble
racket codeinrkt\ copy.rkt >> codeinrkt.txt
echo trial 3 rkt bubble
racket codeinrkt\ copy.rkt >> codeinrkt.txt
echo trial 4 rkt bubble

