class ssmtp::config {

    file { $ssmtp::ssmtp_conf:
            ensure  => file,
            mode    => '0640',
            owner   => 'root',
            group   => 'mail',
            path    => $ssmtp::ssmtp_conf,
            content => template('ssmtp.conf.erb')
    }

    # file {
    #     $ssmtp::revaliases_conf:
    #         ensure  => file,
    #         mode    => '0640',
    #         owner   => 'root',
    #         group   => 'mail',
    #         path    => $ssmtp::ssmtp_conf,
    #         content => template('ssmtp.conf')
    # }

}