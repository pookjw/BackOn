# BackOn

Backup jailbroken iOS devices.

# Features

>- Totally FREE!

>- Supports all iOS versions!

>- Backup & Restore Cydia’s data. (installed packages list, added sources.)

>- Backup & Restore Library. (/var/mobile/Library)

>- Supports restorting xBackup's backup file.

>- Supports English and Korean! (Language switching available.)

>- and so on…

# Requirements

>- A Jailbroken iOS device that is connected on internet.

# How to install

Download deb file from [Here](https://github.com/pookjw/BackOn/tree/master/deb) or add this Cydia source : **http://cydia.myrepospace.com/pookjw**

How to install deb command (requires installed APT 0.7 Strict on your iOS device.)

```
$ dpkg -i /path/to/file
```

# How to run

Install **Mobile Terminal** or **MTerminal** or **OpenSSH** on your jailbroken iOS device to use command line. And type below command.

```
$ backon
```

# Types of build.

>- alpha : Unstable to use. Not recommended.

>- beta : Slightly stable to use.

>- stable : Stable to use. (Not released yet.)

# About DevSettings

BackOn has DevSettings, which simulates the BackOn’s functions. You can open this function (DevSettings) with these two methods.

>- Enter ```ods``` command on BackOn.

>- Excute BackOn by this command : ```$ backon -ods```

(```ods``` is abbreviation of ‘open DevSettings.')

# How to receive ‘alpha’ build

Open DevSettings and set these settings.

>- UpdateBuildType : alpha

>- ForceInstallUpdate : YES

And run **'(16) Check update now.’**

# Before reporting bugs

If you find a bug while using BackOn, PLEASE enable **ShowLog**. Because enabling this settings shows a command log. And this is very helpful.

To enable **ShowLog**, open DevSettings and enable **ShowLog**.

(I am not responsible for problems.)