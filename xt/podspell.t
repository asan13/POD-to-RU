use Test::More;
eval q{ use Test::Spelling };
plan skip_all => "Test::Spelling is not installed." if $@;
add_stopwords(<DATA>);
set_spell_cmd("aspell -l ru list");
all_pod_files_spelling_ok('lib');
__DATA__
Nikolay
Mishin
