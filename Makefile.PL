use ExtUtils::MakeMaker;

WriteMakefile(
   NAME => 'DM4P::Adapter::PgSQL',
   VERSION_FROM => 'lib/DM4P/Adapter/PgSQL.pm',
   PREREQ_PM => {'DM4P' => '0'},
   LICENSE => 'perl'
);

