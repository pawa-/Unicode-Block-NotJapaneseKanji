use inc::Module::Install;
name     'Unicode-Block-NotJapaneseKanji';
all_from 'lib/Unicode/Block/NotJapaneseKanji.pm';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More' => 0.88; # done_testing
test_requires 'Test::Base';

readme_from 'lib/Unicode/Block/NotJapaneseKanji.pm';

resources(
    license    => 'http://dev.perl.org/licenses',
    repository => 'https://github.com/pawa-/Unicode-Block-NotJapaneseKanji',
    bugtracker => 'https://github.com/pawa-/Unicode-Block-NotJapaneseKanji/issues',
);

WriteAll;
