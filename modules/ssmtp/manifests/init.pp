class ssmtp (
    $ssmtp_conf,
    $revaliases_conf,
    $package,
    $root,
    $mail_hub,
    $rewrite_domain,
    $hostname,
    $from_line_override,
    $useTLS,
    $useSTARTTLS,
    $TLSCert,
    $authuser,
    $authpass,
    $authmethod
) {

    contains ssmtp::package
    contains ssmtp::config

    Class['ssmtp::package'] -> Class['ssmtp::config']

}