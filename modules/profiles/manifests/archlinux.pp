
class profiles::archlinux {

    # setup fake root
    file { '/usr/bin/makepkg-root':
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        source => 'puppet:///modules/profiles/archlinux/makepkg-root'
    }

    # Set environment so that yaourt uses
    file { '/etc/yaourtrc':
        ensure => present,
    }->
    file_line { 'Set Makepkg to use root':
        path => '/etc/yaourtrc',
        line => 'MAKEPKG="makepkg-root"',
        match   => "^(#)?MAKEPKG=.*",
    }

}