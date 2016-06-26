# Base profile for, contains common configuration for all nodes

class profiles::base {

    if $::osfamily == 'Archlinux' {
        include profiles::archlinux
    }

    # Set up the localadmin account
    group { 'localadmin':
        ensure  => 'present',
        gid => '1000'
    }

    user { 'localadmin':
        ensure     => present,
        uid        => '1000',
        gid        => '1000',
        shell      => '/bin/bash',
        home       => '/home/localadmin'
    }

    # Set up urxvt unicode
    file { '/usr/share/terminfo/r/rxvt-unicode':
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        source => 'puppet:///modules/profiles/base/rxvt-unicode'
    }

    file { '/usr/share/terminfo/r/rxvt-unicode-256color':
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        source => 'puppet:///modules/profiles/base/rxvt-unicode-256color'
    }

    # Install ZSH
    package { 'zsh':
        ensure => installed,
        name   => 'zsh'
    }

    include augeas

}