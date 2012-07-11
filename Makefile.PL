use inc::Module::Install;

name        'CIF-smrt-perl';
all_from    'lib/CIF/Smrt.pm';
install_script 'bin/cif_crontool';
install_script 'bin/cif_smrt';

requires    'Google::ProtocolBuffers' => '0.08';
requires    'DateTime::Format::DateParse'   => '0.05';
requires    'OSSP::uuid'      => '1.05';
requires    'Config::Simpler' => '4.50';
#requires 'CIF::Msg' => '0.00_01';
#requires 'CIF' => '0.99_04';
#requires 'CIF::DBI' => '0.99';
requires 'Try::Tiny' => '0.04';
requires 'Config::Simple' => '4.59';
requires 'Module::Pluggable' => '3.9';
requires 'Class::Accessor' => '0.34';
requires 'Regexp::Common' => '2.122';
requires 'Regexp::Common::net::CIDR' => '0.02';
requires 'Digest::MD5' => '2.27';
requires 'Digest::SHA' => '2.10';
requires 'File::Type' => '0.22';
requires 'LWP::Protocol::https' => '6.02';
requires 'Linux::Cpuinfo' => '1.7';
requires 'LWP::UserAgent' => '6.02';
requires 'MIME::Base64' => '3.06';
requires 'Date::Manip' => '6.11';
requires 'DateTime' => '0.42';
requires 'DateTime::Format::DateParse' => '0.04';
requires 'Digest::MD5' => '2.27';
requires 'Digest::SHA' => '2.10';
requires 'File::Spec' => '0.8';
requires 'URI::Escape' => '1.56';
requires 'Encode' => '2.23';
requires 'Iodef::Pb::Simple' => '0.00';

WriteAll();