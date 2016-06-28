# This is the default role of all servers
# All other roles also inherirt from this role

class roles::base {

    include profiles::base

    if $::osfamily == 'Archlinux' {
        include profiles::archlinux
        include profiles::mailclient
    }

}
