use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Amazon::SQS::ProducerConsumer',
    AUTHOR              => q{Nic Wolff <nic@angel.net>},
    VERSION_FROM        => 'lib/Amazon/SQS/ProducerConsumer/Base.pm',
    ABSTRACT            => 'Producer and Consumer classes for Amazon Simple Queue Service (SQS)',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
				'XML::Simple' => 0,
				'LWP::UserAgent' => 0,
				'Digest::HMAC_SHA1' => 0,
				'URI::Escape' => 0,
				'MIME::Base64' => 0,
				'Data::Dumper' => 0,
				'JSON::XS' => 0
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Amazon-SQS-ProducerConsumer-*' },
);
