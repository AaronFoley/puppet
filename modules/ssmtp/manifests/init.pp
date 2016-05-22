class ssmtp (
    $ssmtp_conf,
    $revaliases_conf,
    $package,
    $root,
    $mail_hub,
    $rewrite_domain,
    $hostname,
    $from_line_override,
    $usetls,
    $usestarttls,
    $tlscert,
    $authuser,
    $authpass,
    $authmethod
) {

    contains ssmtp::package
    contains ssmtp::config

    Class['ssmtp::package'] -> Class['ssmtp::config']

}