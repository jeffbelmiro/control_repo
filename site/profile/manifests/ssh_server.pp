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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/4bXPh3pIBSZi1Z6fkiJ1cqWM6B+CrjygmvA3GB9lXYBnOi1ISYazazUPzImqj5APfIhu9AtwSCjxjzEQS8cMZtX04IJqzRO0oE0robEAQpHmt8BzzHbFtej1Rt9SP3OEkbo954zcZlAaRuy9C/1rBVxUsUfY4zf7SvgL/Pfeaq+U4PUGciqKklQyw1FLOrYjoO47A3498wHufJ14s/8OxVPmfD2WJ/wYcZcmSEpTM0MTY0d34DOyKaH3119LB53QeVK1xQD9qNsB89Jlq27DILL1mqNMBWV3tzWbX0LJWRZZMMe6bj1dgCKoBazdRtDmOE1apiSUQpSE7UXTqflb',
	}  
}
