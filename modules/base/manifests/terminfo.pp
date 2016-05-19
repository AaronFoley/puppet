class base::terminfo inherits base {

	file { '/usr/share/terminfo/r/rxvt-unicode':
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/urxvt/rxvt-unicode'
	}
	
	file { '/usr/share/terminfo/r/rxvt-unicode-256color':
		owner  => 'root',
		group  => 'root',
		mode   => '0644',
		source => 'puppet:///modules/urxvt/rxvt-unicode-256color'
	}

}
