class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC2MYLTjE26V7EiYMUYl4XIEx3FnqORN2/950qoOcvkHoz8Cu9/6V9OH9r5wfkX1YjBac9kmFLnd2d3W/vrZryWNBLZkcMJc9jtruZY1O/IosQis9q63xAZO4lY25g8Lk5NoxGY2dITOv7kAXc+gdm9EepvWhTgZOtxdWm6BpnEQFqvxnaezkNDvroQ3YK/kSV4iKj0FQ7dcMAHwwzn63CgprAVdJlZVNnWD9brBjRMdoLwLn4H/jhY6wBXQdVafn6opLA7U8ecMP5JO3iixx5kgygWGho1BxaFrz9Q1AERfkqY9OFynbGYoOB0LBksYE53T50Ex54ZErwmC5lCvjm5',
	}  
}
