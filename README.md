# Dzejej Overlay

An gentoo overlay for things I sometimes use

## Install by hand (portage)

First. change to the location, where you would like store git repository e.g.
`cd /scratch/portages`

Then, clone the repo:
`git clone https://gitlab.com/dzejej/dzejej-overlay.git dzejej`

In `/etc/portage/repos/dzejej.conf`:

```
[dzejej-overlay]
location = /scratch/portages/dzejej
sync-type = git
sync-uri = https://gitlab.com/dzejej/dzejej-overlay.git dzejej
priority=9999
```

## Installing packages

You can use __emerge__ to install packages contained in the repository!

```
sudo emerge -av sys-cluster/modules
```

or you can update all yours repos:
```
eix-sync
```
(but first install eix package by doing `emerge -av app-portage/eix`)
