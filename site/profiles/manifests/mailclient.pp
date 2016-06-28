class profiles::mailclient {

    $main_config = hiera('profiles::mailclient::main_config')

    class { 'postfix':
        main_config => $main_config
    }

}
