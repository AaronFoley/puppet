class profiles::mailclient {

    $main_config = lookup('profiles::mailclient::main_config', Array, 'hash')

    class { 'postfix':
        main_config => $main_config
    }

}
