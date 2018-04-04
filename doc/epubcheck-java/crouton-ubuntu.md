# Installing -epubcheck- and requisite Java runtime environment on Crouton's Ubuntu environment

Crouton is an Ubuntu environment that can be installed on a Chromebook
running in developer mode
as a sub-environment of it's main Chrome operating system.

Here are the instructions for installing and/or renewing
the installation of __epubcheck__ and it's requisite Java
runtime environment on Crouton.

The main part of this procedure you should only have to do
once - but there is one part that you will need to do after
every restart of Crouton in which you wish to run __epubcheck__,
as things tend to go awry with that tool otherwise.

## Step one - creating the epubcheck renewal command

This is the part that you should have to do only once.
However (aside from waiting) this is the one part of the
procedure that is the most involved.

Somewhere on your execution path (look at the __PATH__
environment variable to see where that is) create a
file called __epubcheck-renew__ with the following contents.

    #! /bin/sh
    
    # This script is for installing and/or renewing -epubcheck- and
    # it's requisite Java runtime environment on Crouton's Ubuntu
    # environment. (It may also be applicable on Ubuntu in general,
    # but that hasn't been tested).
    #
    # It is recomended that this script be run after every time
    # that you start Crouton - because somehow -epubcheck- stops
    # working properly if you don't run this script after every
    # restart of Crouton.
    
    
    myuid="$(id -u)"
    id
    
    if [ "${myuid}" = "0" ]; then
      true
    else
      exec sudo sh "${0}"
      exit
    fi
    
    
    apt remove epubcheck -y
    apt remove default-jre -y
    apt autoremove -y
    apt update
    apt upgrade -y
    apt install epubcheck -y
    apt install default-jre -y

Now, set the permissions on this file to _755_ so that
it will be an executable command.

## Actually doing the installation and/or renewal

This is the part that you will have to do after every restart
of Crouton. This procedure is (from the user's standpoint) identical
whether you are installing these for the first time or doing
their renewal after restarting Crouton.

In the terminal window, enter the following command:

    epubcheck-renew

You may be prompted for your Ubuntu password (the one
that you set up when you installed Crouton on your system)
so that this script will be able to run with the necessary
privileges.

Once that password is provided, then just sit back
while the script does it's thing.


