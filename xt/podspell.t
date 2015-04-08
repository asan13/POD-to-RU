use Test::More;
eval q{ use Test::Spelling };
plan skip_all => "Test::Spelling is not installed." if $@;
add_stopwords(<DATA>);
set_spell_cmd("sp_ch () {(cat $1|aspell --lang=ru-yo list|aspell --lang=en list); };sp_ch");
all_pod_files_spelling_ok('lib');
__DATA__
VTI
zoffixznet
regop
regops
Nikolay
Mishin
Autoloader
Diablo
Miyagawa
Tatsuhiko
Adriano
Albanowski
Dougherty
Ferreira
PERLDOCDEBUG
UX
Unformatted
brian
foy
Arnfj
FIRSTKEY
NEXTKEY
Optimisation
READONLY
SKIPWHITE
SV
TODO
perlpragma
ACDE
ANDed
PARNO
PerlThink
Posix
RHS
Recursing
aaab
aheads
blurfl
compatibilities
explictly
localizations
matcher
nn
nnn
quotish
readonly
recursed
recursing
reentrancy
reimplementation
righthand
shouldn
th
unclosed
xFF
BOM
BOMless
BOMs
Cn
DeMorgan
HIRAGANA
Hiragana
Kana
Linebreaking
NEL
Posix
Standardese
Unforcing
autodetected
bitness
compat
conformant
counterintuitive
decompositions
directionality
empt
endianness
faux
hiragana
matchable
nonchar
quotish
shouldn
subpragma
syllabaries
utfebcdic
Bourne
CDIMUdmtwW
CGI
CMD
COE
COMSPEC
CSDL
DCL
DDEBUGGING
Dletters
Dnumber
Dp
Dtls
Dx
EXE
Fpattern
Idirectory
LOGDIR
LSP
MMODULE
McAfee
Mmodule
PERLLIB
PERLSHR
Pseudolayer
RLF
Unixi
VMS
cmd
commandline
dt
exe
indir
mmap
mmodule
mysw
octnum
profiler
pseudolayer
xFF
xHHH
xdirectory
ARGVOUT
Initialisation
Localisation
didn
initialisation
initialising
localised
optimisation
optimised
optimiser
perlreguts
pprivate
regnext
regnode
regnodes
tsdy
wasn
casted
checkstr
dualvars
extflags
mgvtbl
minend
ness
optimisations
optimising
perlapi
perlreapi
preconstructed
pregfree
pv
rx
strbeg
strend
stringarg
substituion
unthreaded
FFFF
aren
braceless
caseless
caselessly
limitiations
parenthesization
synonymously
typable
unary
ve
Fld
OFMT
RLENGTH
RSTART
getline
Idir
hv
myconfig
pna
sTtuUWX
SErver
Transmogrifier
clpa
mishin
modularise
xs
CVS
JPRP
OmegaT
Yusuke
Juerd
Waalboer
Kirrily
Skud
Christiansen
Cromie
Foldcase
Iain
Soderberg
Truskett
Wollmann
EBCDIC
PCRE
casefold
ctal
doesn
eXtended
grapheme
isn
Amma
Amphisbaena
Andreas
Arnfjör
Bjarmason
Diab
Dmitry
Goatse
Inkster
Ivey
Jerius
José
Karasik
Krotkine
König
Mengué
NCC
OSCON
Orton
Pagaltzis
Pau
PerlMonks
Rafaël
Salzenberg
Savige
Thoennes
Tye
Vuets
Yitzchak
Zefram
babycart
demonstrandum
erat
heredoc
idiome
perlsecret
quod
registr
ACM
Ævar
linebreak
metasymbol
oCtet
perlrebackslash
thai
perlreref
hasn
env
perlintro
perlcheat
ru
sourceforge
aXXXb
runtime
REx
aa
ATGC
housecat
cathouse
ba
bb
bc
bd
ddd
das
charnames
Kimball
IsCntrl
IsGraph
LMNPS
cd
ATC
dec
STDERR
toto
bert
dD
chr
optimizations
de
df
saippuakauppias
aaaaabb
pragma
perl
Sabbathize
catenates
lexically
eE
ef
fA
der
regex
elsif
abcdef
fg
gc
cZ
IsDigit
TGA
eq
TGC
gi
cdef
perlretut
hh
perlunitut
termcap
dir
pragmas
IsPrint
booboo
multi
Sabbathizes
IsSpace
dna
foreach
lc
xyz
progra
POSTMATCH
li
minlen
PREMATCH
GAA
LM
GAC
binmode
katakana
lp
cntrl
incrementing
IsASCII
LMN
aaaa
RegExp
bcat
Ukeypunch
mr
savestack
Pe
printf
bertram
expr
IsWord
IsAlpha
pM
chmod
STDOUT
rf
perlunicode
oW
str
Pinyan
Mmm
AWho
xdigit
multiline
abcde
subexpression
qw
sm
oct
xaa
abba
sS
ss
ming
IsPunct
aaa
supercalifragilisticexpialidocious
abcd
donut
aba
IsAlnum
AAG
abc
aeiou
abd
ut
acb
fmt
greek
QThat
perldebguts
xat
zA
mrs
goto
aat
ATCGTTGAAT
utf
yaa
ascii
patt
IsSpacePerl
usr
debugcolor
txt
O'Reilly
substrings
yY
sabbath
keymatch
eval
perlfunc
housecats
STDIN
dogbert
yyyy
perlrecharclass
Kvale
zaa
fooooba
perlop
POSIX
dilbert
IsUpper
baz
perlre
num
bcr
Haworth
unicode
toks
codon
punct
osg
substr
lang
kwds
ATCGTTGAATGCAAATGACATGAC
catwords
alnum
dirs
nWho
GTT
IsLower
Friedl
IsBlank
pos
IsXDigit
ing

