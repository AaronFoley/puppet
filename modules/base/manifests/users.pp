class base::users inherits base {

	group { 'localadmin':
		ensure  => 'present',
		gid	=> '1000'
	}

	user { 'localadmin':
		ensure     => present,
		uid        => '1000',
		gid        => '1000',
		shell      => '/bin/bash',
		home       => '/home/localadmin'
	}
}
