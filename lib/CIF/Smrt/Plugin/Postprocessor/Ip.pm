package CIF::Smrt::Plugin::Postprocessor::Ip;
use base 'CIF::Smrt::Plugin::Postprocessor';

use strict;
use warnings;

use Iodef::Pb ':all';

use Module::Pluggable require => 1, search_path => [__PACKAGE__];

my @plugins = __PACKAGE__->plugins();

sub process {
    my $class   = shift;
    my $config  = shift;
    my $data    = shift;

    my $addresses = iodef_addresses($data);
    return unless($#{$addresses} > -1);

    foreach (@plugins){
        $_->process($config,$data);
    }
}

sub is_ipv4 {
    my $class = shift;
    my $addr = shift;
    
    return 1 if($addr->get_category()  == AddressType::AddressCategory::Address_category_ipv4_addr());
    return 1 if($addr->get_category()  == AddressType::AddressCategory::Address_category_ipv4_net());
    return 1 if($addr->get_category()  == AddressType::AddressCategory::Address_category_ipv4_net_mask());
}

sub is_ipv6 {
    my $class = shift;
    my $addr = shift;
    
    return 1 if($addr->get_category()  == AddressType::AddressCategory::Address_category_ipv6_addr());
    return 1 if($addr->get_category()  == AddressType::AddressCategory::Address_category_ipv6_net());
    return 1 if($addr->get_category()  == AddressType::AddressCategory::Address_category_ipv6_net_mask());
}

1;