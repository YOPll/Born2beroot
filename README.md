# Born2beroot
Project for [1337](https://1337.ma) *#42network*

This project aims to introduce you to the wonderful world of virtualization.

You will create your first machine in VirtualBox (or UTM if you can’t use VirtualBox) under specific instructions. Then, at the end of this project, you will be able to set up your own operating system while implementing strict rules.

See the subjects for further information

[SUBJECT](subject/en.subject.pdf)

## Usefull links:

- How To DNF:
https://docs.fedoraproject.org/en-US/quick-docs/dnf/

- Hardening sudoers configuration:
https://www.tecmint.com/sudoers-configurations-for-setting-sudo-in-linux/

- Configuration of UFW:
https://wiki.ubuntu-it.org/Sicurezza/Ufw

- Password policy:
https://www.server-world.info/en/note?os=CentOS_8&p=pam&f=1

- Installing & configuring lighttpd, Mariadb, PHP:
https://www.howtoforge.com/how-to-install-lighttpd-with-php-fpm-and-mariadb-on-centos-8/

- Check status of chronyd (NTP client/server):
https://docs.fedoraproject.org/en-US/Fedora/18/html/System_Administrators_Guide/sect-Checking_if_chrony_is_synchronized.html

## All things U need to Know before evaluation
### 1.Basic functioning of the virtual machine

A virtual machine, commonly shortened to just VM, A Virtual Machine (VM) is a compute resource that uses software instead of a physical computer to run programs and deploy apps (is no different than any other physical computer). It has a CPU, memory, disks to store your files, and can connect to the internet if needed. While the parts that make up your computer (called hardware) are physical and tangible, VMs are often thought of as virtual computers or software-defined computers within physical servers, existing only as code.

![VM](https://azurecomcdn.azureedge.net/cvt-c6423f74796365dad64d76835f10a79b10d64b0ec5f06b8061d1a854a4cd1ed1/images/page/overview/what-is-a-virtual-machine/overview-img.png)

### 2.How does a virtual machine work?
Virtualization is the process of creating a software-based, or "virtual" version of a computer
 A virtual machine is a computer file, typically called an image, that behaves like an actual computer. It can run in a window as a separate computing environment, often to run a different operating system—or even to function as the user's entire computer experience—as is common on many people's work computers. The virtual machine is partitioned from the rest of the system, meaning that the software inside a VM can't interfere with the host computer's primary operating system.

### 3.Choice of operating system?
Debian

The families and representative lINUX distributions we are using are: 

Red Hat Family Systems (including CentOS and Fedora)
SUSE Family Systems (including openSUSE)
Debian Family Systems (including Ubuntu and Linux Mint).

![Linux distributions](https://courses.edx.org/assets/courseware/v1/1d8c97abd237dcd44a5fe5464f6521ac/asset-v1:LinuxFoundationX+LFS101x+1T2020+type@asset+block/chapter01_The_Linux_Kernel_Distribution_Families_and_Individual_Distributions.png)

** The Debian Family
 Debian is a pure open source community project (not owned by any corporation) and has a strong focus on stability.!
 
 [debian family](https://courses.edx.org/assets/courseware/v1/223d3c300d6cdd86ae66e8c2b9faa265/asset-v1:LinuxFoundationX+LFS101x+1T2020+type@asset+block/chapter01_screen20.jpg)

Some key facts about the Debian family are listed below:

* The Debian family is upstream for Ubuntu, and Ubuntu is upstream for Linux Mint and others.
Kernel version 4.15 is used in Ubuntu 18.04 LTS.
It uses the DPKG-based APT package manager (using apt, apt-get, apt-cache, etc. which we cover in detail later) to install, update, and remove packages in the system.
Ubuntu has been widely used for cloud deployments.
While Ubuntu is built on top of Debian and is GNOME-based under the hood, it differs visually from the interface on standard Debian, as well as other distributions.

### 4.Key diferences between CentOS and Debian

Both servers are popular choices in the market; let us discuss some of the major difference:

* One should pick Debian as it generally has more up to date packages and because it is easier to upgrade to a newer version. A lot of people have started their GNU/Linux journey with Red Hat Linux, and they have always used CentOS and Fedora on their Desktop.
* If one is more used to CentOS and is more accustomed to working with it or have been using it for a long, then there is no real reason to migrate to Debian. CentOS vs Debian are both the best options one can have when choosing a GNU/Linux distribution to install on their web server or any other server.
* There is one more thing that one should keep in mind when installing a Web Server. If this server is going to be used as a reseller tool, he/she may want to install a tool called cPanel, and in such a case going with CentOS is recommended, as it is officially supported


CentOS|Debian
---|---
CentOS is more stable and supported by a large community|Debian has relatively less market preference.
Mission-critical servers are hosted on CentOS|Ubuntu is fast catching up. A lot of people are betting on it.
Usually, it is very difficult to upgrade a version of CentOS locally. Official sources recommend installing a newer version then to upgrade an older one.|Upgrading Debian from one stable version to another is easy and not painf
It does not have an easy GUI. | It has desktop friendly applications and GUI.
The core software of CentOS, such as the RHEL/CentOS components, also the kernel and all its utilities, come from the distribution, while the add-on software like Apache, PHP, Java, and MySQL come from newer sources such as Fedora or from vendors directly such as MySQL | A real reason to use Debian is if they provide unique functionality that is necessary for a system; in such cases switching to Debian makes sense. Apt repositories in package managers have the latest source code for several open-source languages and frameworks like ruby, rails, PostgreSQL, Golang, selenium, angular2-dart etc. Ubuntu is very suitable to work with when using Docker file/s docker containers.

### 5.Diff between aptitude and apt?(package management)
Aptitude is a high-level package manager while APT is lower-level package manager which can be used by other 
higher-level package managers

* apt: Apt is whole command line with no GUI. It finds that package in configured list of sources specified in ‘/etc/apt/sources.list’

* Aptitude: Aptitude is front-end to advanced packaging tool which adds a user interface to the functionality. Aptitude is a high-level package manager while APT is lower-level package manager which can be used by other higher-level package managers, other main highlights that separate these two package managers are:
	- Aptitude is vaster in functionality than apt-get and integrates functionalities of apt-get and its other variants including apt-mark and apt-cache.
	- apt-mark: show, set and unset various settings for a package
	- apt-cache command can display much of the information stored in APT's internal database

* What is AppArmor?
AppArmor ("Application Armor") is a Linux kernel security module that allows the system administrator to restrict programs'
capabilities with per-program profiles. Profiles can allow capabilities like network access, raw socket access, and the permission to read, write, or execute files on matching paths. AppArmor supplements the traditional Unix discretionary access control (DAC) model by providing mandatory access control (MAC)



# Resources:

LinuxFoundationX LFS101x

Introduction to Linux
