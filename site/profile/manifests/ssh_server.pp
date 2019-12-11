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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKd+E94PrWWEMMA8HJLeM7IPiGWOpqjbR/UakdZasA20QYF/b4UlW83D8GLpu2nnRZlY+V+0H1Fq/BDAkiTAS8vFBlzhuoQDosqA5hPcuSLgCjrIBGRLfDTswgvcomyQZ6Yzwb+/wckWBDpEQWPbbz2W/lErc4iA3MjbIbrc6uI9cBqiMtLczrurjuwEriPD5NIFR6/ijmkYpslxPRm8ln3ow/kaE+POInBBFytsSbeVF9bnMYnxDVD7lfm5axwYXPS8zO0KqYw8sfrWW51547tDkzevN0GRJz7msohu6ICJYeZfH1+nPWQNIbfpfq2uoHGPgiKBo7kzl5ywJGc5hX',
	}
}
