use strict;
use warnings;
use utf8;
use Unicode::Block::NotJapaneseKanji;
use Test::Base;
plan tests => 1 * blocks;

binmode Test::More->builder->$_ => ':utf8'
    for qw/output failure_output todo_output/;


run {
    my $block = shift;

    if ($block->ex) { ok($block->in =~ /\p{InNotJapaneseKanji}/); }
    else            { ok($block->in !~ /\p{InNotJapaneseKanji}/); }
};

__DATA__
=== 桜
--- in: 桜
--- ex: 0

=== 语
--- in: 语
--- ex: 1

=== 森鷗外
--- in: 森鷗外
--- ex: 0

=== 汉
--- in: 汉
--- ex: 1

=== 马
--- in: 马
--- ex: 1

=== 馬
--- in: 馬
--- ex: 0

=== 汍
--- in: 汍
--- ex: 1

=== 繫
--- in: 繫
--- ex: 0

=== 瘠
--- in: 瘠
--- ex: 0

=== 蟬
--- in: 蟬
--- ex: 0

=== 啞焰鷗摑麴噓俠頰軀俱繫姸鹼嚙攢𠮟繡蔣醬蟬搔瘦驒簞塡顚禱瀆吞囊剝潑醱屛幷麵萊屢﨟蠟
--- in: 啞焰鷗摑麴噓俠頰軀俱繫姸鹼嚙攢𠮟繡蔣醬蟬搔瘦驒簞塡顚禱瀆吞囊剝潑醱屛幷麵萊屢﨟蠟
--- ex: 0

=== 五里霧中因果応報百花繚乱百発百中天変地異三寒四温自業自得抱腹絶倒無我夢中以心伝心威風堂々付和雷同危機一髪一生懸命四苦八苦七転八倒絶体絶命田代まさし和気藹々
--- in: 五里霧中因果応報百花繚乱百発百中天変地異三寒四温自業自得抱腹絶倒無我夢中以心伝心威風堂々付和雷同危機一髪一生懸命四苦八苦七転八倒絶体絶命田代まさし和気藹々
--- ex: 0

=== 柚木
--- in: 柚木
--- ex: 0

=== 拼
--- in: 拼
--- ex: 1
