class base::packages inherits base {

	package { 'zsh':
		ensure => installed,
		name   => 'zsh'
	}
}
