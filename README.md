# BackOn

Backup the jailbroken iOS devices.

# Features

>- Totally FREE!

>- Supports all of iOS versions!

>- Backup & Restore Cydia’s data. (installed packages list, added sources.)

>- Backup & Restore Library. (/var/mobile/Library)

>- Supports English, Korean languages! (Language switching is available.)

>- and so on…

# Requirements

>- Jailbroken iOS device that connected on internet.

# How to install

Download deb file from [Here](https://github.com/pookjw/BackOn/tree/master/deb) or add this Cydia source : **http://cydia.myrepospace.com/pookjw**

Installing deb command (requires installed APT 0.7 Strict on your iOS device.)

```
$ dpkg -i [/path/to/file]
```

# How to run

Install **Mobile Terminal** or **MTerminal** or **OpenSSH** on your jailbroken iOS device to use command line. And type below command.

```
$ backon
```

# Types of build.

>- alpha : Unstable to use. Not recommend.

>- beta : Slightly stable to use.

>- stable : Stable to use. (Not completed yet.)

# About DevSettings

BackOn has DevSettings, simulate the BackOn’s functions. You can open this function (DevSettings) these two method.

>- Enter ```ods``` command on BackOn.

>- Excute BackOn by this command : ```$ backon -ods```

(```ods``` is abbreviation of ‘open DevSettings.')

# How to receive ‘alpha’ build

Open DevSettings and set these settings.

>- UpdateBuildType : alpha

>- ForceInstallUpdate : YES

And run **'(16) Check update now.’**