package POD2::RU;

# ABSTRACT: Perl Документация по-русски
use warnings;
use strict;

use utf8;
use base 'POD2::Base';

our $VERSION = '5.18.0.1.75';

# Versions list
sub pod_info {
    perl              => '5.18.0.1',
      perlintro       => '5.18.0.1',
      perlrun         => '5.18.0.1',
      a2p             => '5.18.0.1',
      perlbook        => '5.18.0.1',
      perldoc         => '5.18.0.1',
      perlpragma      => '5.18.0.1',
      perlstyle       => '5.18.0.1',
      perlcheat       => '5.18.0.1',
      perlnewmod      => '5.18.0.1',
      perlrequick     => '5.18.0.1',
      perlreref       => '5.18.0.1',
      perlunicode     => '5.18.0.1',
      perlretut       => '5.18.0.1',
      perlreguts      => '5.18.0.1',
      perlrecharclass => '5.18.0.1',
      perlrebackslash => '5.18.0.1',
      perlreapi       => '5.18.0.1',
      perlre          => '5.18.0.1',
      perlsecret      => '5.18.0.1',
      ;
}

# String for perldoc with -L switch
sub search_perlfunc_re {
    return 'Список функций Perl';
}

1;
__END__

=encoding utf-8

=for stopwords

=head1 NAME

POD2::RU - документация Perl по-русски

=for HTML 
<a href="https://travis-ci.org/mishin/POD-to-RU"><img src="https://camo.githubusercontent.com/4d5013ccad85146ce9c975dce7d677e20a632b5a/68747470733a2f2f7472617669732d63692e6f72672f6d697368696e2f504f442d746f2d52552e7376673f6272616e63683d6d6173746572" alt="Build Status" data-canonical-src="https://travis-ci.org/mishin/POD-to-RU.svg?branch=master" style="max-width:100%;"></a>
<a href="https://coveralls.io/r/mishin/POD-to-RU?branch=master"><img src="https://camo.githubusercontent.com/8769056c0371af38c8fd59b06de30c14037c8f33/68747470733a2f2f636f766572616c6c732e696f2f7265706f732f6d697368696e2f504f442d746f2d52552f62616467652e706e673f6272616e63683d6d6173746572" alt="Coverage Status" data-canonical-src="https://coveralls.io/repos/mishin/POD-to-RU/badge.png?branch=master" style="max-width:100%;"></a>
<a href="http://cpants.charsbar.org/dist/overview/POD2-RU"><img src="https://camo.githubusercontent.com/fbfe24c64a9d7662a1b9fb774ead7f7fe34fec71/687474703a2f2f6370616e74732e6370616e617574686f72732e6f72672f646973742f504f44322d52552e706e67" alt="Kwalitee status" data-canonical-src="http://cpants.cpanauthors.org/dist/POD2-RU.png" style="max-width:100%;"></a>
<a href="https://github.com/mishin/POD-to-RU/issues"><img src="https://camo.githubusercontent.com/adb231d4b9884b6955a2f9373ce099654193182a/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6973737565732f6d697368696e2f504f442d746f2d52552e737667" alt="GitHub issues" data-canonical-src="https://img.shields.io/github/issues/mishin/POD-to-RU.svg" style="max-width:100%;"></a>
<a href="https://metacpan.org/release/POD2-RU"><img src="https://camo.githubusercontent.com/f176cd20b10c2aa1639142f327302a7b9fbc21b2/68747470733a2f2f696d672e736869656c64732e696f2f6370616e2f6c2f504f44322d52552e737667" alt="Cpan license" data-canonical-src="https://img.shields.io/cpan/l/POD2-RU.svg" style="max-width:100%;"></a>
<a href="https://metacpan.org/release/POD2-RU"><img src="https://camo.githubusercontent.com/df363da200ccfd0741da030dd26b99a2612c8fff/68747470733a2f2f696d672e736869656c64732e696f2f6370616e2f762f504f44322d52552e737667" alt="Cpan version" data-canonical-src="https://img.shields.io/cpan/v/POD2-RU.svg" style="max-width:100%;"></a></p>

=head1 SYNOPSIS

  use POD2::RU;
  print_pods();
  print_pod('pod_foo', 'pod_baz');

=head1 DESCRIPTION

Модуль POD2::RU содержит перевод Perl-документации на русский. 
Домашняя страница проекта ─ L<https://github.com/mishin/POD-to-RU>. 

Примеры использования

  perldoc POD2::RU::perlretut

  perl -MPOD2::RU -e 'print_pods'
  perl -MPOD2::RU -e 'print_pod <название_pod1> [<название_pod2> ...]'

  use POD2::RU;
  print_pods();
  print_pod('pod_foo', 'pod_baz');

После установки пакета, вы можете использовать следующую команду, чтобы получить документацию:

  perldoc POD2::RU::<название_pod>

Начиная с Pod::Perldoc версии 3.14 можно использовать следующий синтаксис:

  perldoc -L RU <название_pod>
  perldoc -L RU -f <функция>
  perldoc -L RU -q <регулярное выражение для FAQ>

Модификатор  C<-L> определяет код языка перевода. Если пакет C<< POD2::<код_языка> >> не существует, то модификатор игнорируется.

Для ленивых можно добавить псевдоним (alias):

  perldoc-ru="perldoc -L RU"

для того, чтобы не писать модификатор  C<-L> каждый раз:

  perldoc-ru perlre
  perldoc-ru -f map

Начиная с  F<Pod::Perldoc> версии 3.15 вы можете использовать переменную среды PERLDOC_POD2. Если эта переменная установлена в '1', то perldoc осуществляет поиск pod документации на языке, указанном в переменной LC_ALL, LANG или LC_LANG. Или же вы можете установить значение "ru", означающее вывод документации на русском языке. Например,

       export PERLDOC_POD2="ru"
       perldoc perl

=head1 API

Пакет экспортирует следующие функции:

=over 4

=item * C<new>

Была добавлена для совместимости с C<perldoc> Perl 5.10.1.
L<Pod::Perldoc> использует ее для возврата имени пакета перевода.

=item * C<pod_dirs>

Была добавлена для совместимости с C<perldoc> Perl 5.10.1.
L<Pod::Perldoc> использует ее для определения, где искать переведенные файлы.

=item * C<print_pods>

Выводит все переведенные части и оригинальную версию Perl.

=item * C<print_pod>

Выводит на экран оригинальнуя версию Perl для всех частей, переданых в качестве аргументов.

=item * C<search_perlfunc_re>

C<< perldoc -f function >> использует возвращаемое значение этой функции (как regexp), чтобы пропустить введение и найти список функций.

=item * C<pod_info>

C<<pod_info>> - Выдает хэш с текущими pod файлами в данном дистрибутиве

=back

=head1 AUTHOR

Nikolay Mishin E<lt> mi@ya.ru E<gt>

=head1 CONTRIBUTORS

=over 1

=item * Анатолий Шарифулин (L<SHARIFULN|https://metacpan.org/author/SHARIFULN>)

=item * Андрей Шитов (L<ANDY|https://metacpan.org/author/ANDY>)

=item * Алексей Суриков (L<KSURI|https://metacpan.org/author/KSURI>)

=item * Михаил Любимов (L<mikhail.lyubimov|http://event.perlrussia.ru/rpw2008/user/4579>)

=item * Дмитрий Константинов (L<Dim_K|http://www.weblancer.net/users/Dim_K/portfolio/>)

=item * Евгений Баранов (L<Baranov|http://event.yapcrussia.org/mayperl2/user/161>)

=item * Антон Никишаев (L<llelf|https://github.com/llelf>)

=item * Динар Жамалиев (L<zhdinar|http://blog.perl5doc.ru>)

=item * Валерий Кравчук (L<valera@openxs.kiev.ua|http://www.opennet.ru/search.shtml?exclude=index|%2Fman.shtml&words=valera%40openxs.kiev.ua>)

=item * Enrique Nell (L<ENELL|https://metacpan.org/author/ENELL>) 

=item * Yusuke Kawasaki (L<KAWASAKI|https://metacpan.org/author/KAWASAKI>)

=item * Вячеслав Тихановский (L<VTI|https://metacpan.org/author/VTI>)

=item * Zoffix Znet (L<ZOFFIX|https://metacpan.org/author/ZOFFIX>)

=item * Дмитрий Анисимов

=item * Андрей Варлашкин

=item * Кирилл Флоренский

=back

=head1 COPYRIGHT

Copyright 2015- Nikolay Mishin

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 REPOSITORY

L<https://github.com/mishin/POD-to-RU>

=head1 SUPPORT
 
This module is managed in an open L<GitHub
repository|http://github.com/mishin/POD-to-RU/>. Feel free to fork and
contribute, or to clone L<git://github.com/mishin/POD-to-RU.git> and send
patches!
 
Found a bug? Please L<post|http://github.com/perl-pod/test-pod/issues> a report!

=head1 SEE ALSO

L<POD2::ES>, L<POD2::PT_BR>, L<POD2::IT>, L<POD2::FR>, L<POD2::LT>.

=head1 DONATIONS

Проект перевода документации Perl требует постоянных усилий, что доступно только для сильных духом и альтруистов.
Авторы не просят, но ни не отвергают помощь в виде денег, книг, сыра и продуктов из свинины (можно хамон;) ), или даже поездки в Полинезию для снижения утомления и сохранения боевого духа команды. Мы приглашаем всех. (стащено и переведено отсюда L<POD2::ES>)

=head1 THANKS 

Авторы хотели бы выразить свою благодарность команде разработчиков OmegaT, инструмента, который используется для перевода.

Проект OmegaT: L<http://omegat.org/>

Также хотелось бы выразить благодарность автору перевода perl документации на испанский язык 
POD2::ES Enrique Nell за его в помощь в написании скриптов.
 
Проект POD2::ES: L<https://github.com/zipf/perldoc-es>

Благодарность Yusuke Kawasaki за совет разместить весь проект на github
на вопрос о японской документации он ответил:
They (JPRP people) uses sourceforge and its CVS. 

L<http://sourceforge.jp/cvs/view/perldocjp/docs/modules/>

They are using a traditional mailing list and sourceforge's bug tracking system. In my opinion, github would be a much better way to manage those things at the moment. github was not exist when they started the project.

Спасибо Яндекс Спеллеру L<https://tech.yandex.ru/speller/>, L<http://speller.yandex.net/speller/1.0/index.html> за то, что через него можно прогнать русский
текст и удобно исправить ошибки!

Спасибо сайту L<http://online.orfo.ru/> - он выручал даже тогда, когда был бессилен Яндекс Спеллер.

Спасибо переводчику L<http://www.bing.com/translator/> за хороший предварительный перевод,
но помучаться все равно придется, получается пока сыро;)

Спасибо L<Mail.ru> за проведение конференции YAPC Russia 2015 
и лично Павлу Щербинину.

=cut
