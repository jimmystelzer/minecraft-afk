# minecraft-afk
This is a simple script to enable AFK in minecraft 1.13 under Linux

# Usage
Disable pauseOnLostFocus in minecraft as usual:

```bash
sed -i 's/pauseOnLostFocus:true/pauseOnLostFocus:false/' ~/.minecraft/options.txt
```

Run the game as normal and when you like to go in AFK, just Alt+Tab and run the script:

```bash
./minecraft-afk.sh
```

# Openbox integration
You could integrate this script with openbox. To do so just create a new keybind with the your preferred key and options. Example to bind Super+Tab combination keys to alternate the windows and execute the minecraft-afk script:

```xml
<keybind key="W-Tab">
	<action name="NextWindow">
	<finalactions>
		<action name="Focus"/>
		<action name="Raise"/>
		<action name="Unshade"/>
		<action name="Execute">
			<command>/home/jimmy/bin/minecraft-afk.sh</command>
		</action>
	</finalactions>
	</action>
</keybind>
```

