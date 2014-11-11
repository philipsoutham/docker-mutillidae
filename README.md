Description
===========

Docker container for [NOWASP (Mutillidae)](http://sourceforge.net/projects/mutillidae/).


# Quick Start

Pull database image:

```shell
docker pull dockerfile/mariadb:latest
```


Pull Mutillidae:

```shell
docker pull psoutham/mutillidae:latest
```


Start database:

```shell
docker run -d --name=mysql dockerfile/mariadb
# Or, alternatively
docker run --rm -it --name=mysql dockerfile/mariadb
```


Start Mutillidae:

```shell
docker run --name=mutillidae -d --link=mysql:mysql -p 80:80 psoutham/mutillidae
# Or, alternatively
docker run --name=mutillidae --rm -it --link=mysql:mysql -p 80:80 psoutham/mutillidae
```

Configure Mutillidae:

Visit [http://localhost/mutillidae]() and select [`setup/reset the DB`](http://localhost/mutillidae/set-up-database.php).
