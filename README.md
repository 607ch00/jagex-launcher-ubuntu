# Jagex Launcher on Ubuntu
How I got this working on Ubuntu 22.04 with the native Runescape 3 native Linux client and without Lutris.

From this [youtube guide](https://www.youtube.com/watch?v=izLxF_Wwinw) we see an easy way to get the Windows application we'll move over to our host system.

From [this example](https://raw.githubusercontent.com/TormStorm/jagex-launcher-linux/main/resources/runescape.sh) we see the list of environment variables used in the [runescape.sh](./runescape.sh) script.

Examining the [lutris config file](https://github.com/TormStorm/jagex-launcher-linux/blob/main/resources/jagexlauncher.yml) we see how to trick the Jagex Launcher how to call the shell script.

## Disclaimer

The information here are the steps needed to get Runescape 3 working on my system and for reference only. You take full responsibility for your own actions. Please see the [LICENSE](./LICENSE)

# Step-by-step
* Using a Win10 VM, download and install the [installer](https://cdn.jagex.com/Jagex%20Launcher%20Installer.exe) and then zip the entire directory `C:\Program Files (x86)\Jagex Launcher` and transfer it to host machine.   The VM is not required after this is completed, so close it out.
* Follow the guide [How to get out of Wine Dependency hell](https://www.gloriouseggroll.tv/how-to-get-out-of-wine-dependency-hell/) and make sure to install `wine-staging`
* Install the list of suggested [Wine Dependencies](https://github.com/lutris/docs/blob/master/WineDependencies.md#ubuntudebianubuntu-derivativesdebian-derivatives)
* Create the directory `~/.wine/drive_c/Program Files (x86)` and extract the zip file from earlier into it so the full path looks like `~/.wine/drive_c/Program Files (x86)/Jagex launcher`
* Edit `jagex-launcher.desktop` so that your user name is in the path for the `Exec` command
* Copy the `jagex-launcher.desktop` file to `~/.local/share/applications` and then run `update-desktop-database ${HOME}/.local/share/applications` to have it appear in your application menu
* Start the launcher and log in with your existing credentials
* Click Install and let it download the Windows version of the game - this way the registry doesn't need to be edited
* There should now be a new directory `~/.wine/drive_c/Program Files (x86)/Jagex Launcher/Games/Runescape` that contains `Runescape.exe` and `runescape_shortcut.ico`
* Close the launcher
* Copy the `runescape.sh` file to `~/Jagex`
* Remove the installed Run `rm ~/.wine/drive_c/Program\ Files\ \(x86\)/Jagex\ Launcher/Games/Runescape/Runescape.exe`
* Run `ln -s ~/Jagex/runescape.sh ~/.wine/drive_c/Program\ Files\ \(x86\)/Jagex\ Launcher/Games/Runescape/Runescape.exe`
* Verify that the game starts up and log in with an existing credentials
* When all looks well, it should be safe to copy over the profile to a Jagex Account

Thanks to all the people that put in the hard work figuring this all out, it made it a lot easier getting this all wired up. <3

# Resources
* https://www.youtube.com/watch?v=izLxF_Wwinw
* https://www.gloriouseggroll.tv/how-to-get-out-of-wine-dependency-hell/
* https://github.com/lutris/docs/blob/master/WineDependencies.md#ubuntudebianubuntu-derivativesdebian-derivatives
* https://lutris.net/games/jagex-launcher/
* https://github.com/TormStorm/jagex-launcher-linux
    * https://github.com/TormStorm/jagex-launcher-linux/blob/main/resources/jagexlauncher.yml
* https://help.jagex.com/hc/en-gb/articles/13413514881937-Downloading-the-Jagex-Launcher-on-Linux
