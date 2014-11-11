Description
===========

Docker container for [NOWASP (Mutillidae)](http://sourceforge.net/projects/mutillidae/).


# Quick Start

Pull database image:

```shell
docker pull dockerfile/mariadb
```

Pull Mutillidae:

```shell
docker pull psoutham/mutillidae
```

Start database:

```shell
docker run -d --name=mysql dockerfile/mariadb
# Or, alternatively
docker run --rm -it --name=mysql dockerfile/mariadb
```

Start Mutillidae:

```shell
docker docker run --name=mutillidae -d --link=mysql:mysql -p 80:80 psoutham/mutillidae
# Or, alternatively
docker docker run --name=mutillidae --rm -it --link=mysql:mysql -p 80:80 psoutham/mutillidae
