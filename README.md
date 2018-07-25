odoo-vagrant
============

Vagrant Setup for Odoo

Dependencies
------------

Tested with Vagrant 1.9.1 with `libvrt`.

Setup
-----

1. Download and install Vagrant

```
sudo apt install vagrant vagrant-libvirt
```

1. Setup the Vagrant box.

```
vagrant box add debian/stretch64
```
   
2. Clone this repository 

```
git clone https://github.com/valerio-bozzolan/odoo-vagrant
```

3. Create the `addons` directory before entering in the project directory

```
mkdir addons
cd odoo-vagrant
```

4. Vagrant up

```
vagrant up
```
