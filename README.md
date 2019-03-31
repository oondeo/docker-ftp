# vsftpd
minimal ftp and sshd server compatible with openshift
First parameter is server to run, sshd by default
In ssh only key login is permited.

## Config files mountpoints
/opt/app-root/etc/user_list :
```
adam:clave:/ftp/adam
```
/opt/app-root/etc/ssh_password
/opt/app-root/etc/authorized_keys

##VARIABLES:

- CHROOT:YES jail users in home dir
- PASSIVE_PORTS: pasv ports used default: 60000:60010
- FTP_PORT: change port 20
- FTPD_PORT:  change port 21 
- SSH_PORT: change port 22
- ADDRESS: public address
- USERS: user list in the form of user:password
- SSH_KEY: Public key to login (user is 1001)
- SSH_PASSWORD: 

## EXAMPLE 
```
docker run --name ftp --group-add root --rm -ti -e USERS="adam:clave:/ftp/adam" -p 10020:10020 -p 10021:10021 oondeo/ftpd /bin/sh


```
##WORK IN PROGRESS !!
- ssh tested