# vsftpd
minimal ftp and sshd server compatible with openshift



VARIABLES:

CHROOT:YES jail users in home dir
PASSIVE_PORTS: pasv ports used default: 60000:60010
FTP_PORT: change port 20
FTPD_PORT:  change port 21 
SSH_PORT: change port 22
ADDRESS: public address
USERS: user list in the form of user:password
SSH_KEY: Public key to login (user is 1001)


WORK IN PROGRESS !!
- ssh tested