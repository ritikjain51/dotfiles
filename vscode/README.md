
There are three ways to edit settings.json

- in User Preferences (Global)
- in Folder
- in Workspace


### In User Preferences (Global)
You can change the settings.json from your user preferences. This changes are global. Therefore it will affect all of your projects. Here are 2 ways to reach that global settings.json file.

`File -> Preferences -> Settings -> Extensions -> Scroll down and find "Edit in settings.json"`

Or in these paths in your OS

Windows `%APPDATA%\Code\User\settings.json`

macOS `$HOME/Library/Application Support/Code/User/settings.json`

Linux `$HOME/.config/Code/User/settings.json`


### In Folder
If you have opened a folder (File -> Open Folder), here's the way to add settings.json in the folder. This will affect only the current folder

- Create a folder named .vscode in the root folder
- Create a file named settings.json in that folder and add your settings there.

```json
{    
     "settings-key": {
        "setting-1":  true,
        "setting-2":  "../css/",
        "setting-3": "> 0.2%, last 1 version"
    }
}
```


### In WorkSpace

If you have opened a workspace (`File -> Open Workspace to open or saved using File -> Save Workspace As...`), here are the steps to change settings of the workspace. Note that in this way, you don't have a settings.json. But, you can do everything done by it in another way.

- When you save the workspace, it creates a file called` yourworkspace.code-workspace`
- Open that file in Visual Studio Code. Then you will see something like this.
```json
{
	"folders": [
		{
			"path": "F:\\Projects\\Unknown\\stable"
		}
	]
}
```
- You can add the settings by adding a key named "settings" in JSON.
```json
{
	"folders": [
		{
			"path": "F:\\Projects\\Groups\\groups"
		}
	],
	"settings": {    
	    "settings-key": {
        	"setting-1":  true,
        	"setting-2":  "../css/",
        	"setting-3": "> 0.2%, last 1 version"
    	}
	}
}
```

When you add settings into yourwokspace.code-workspace file, the settings will only be available for the current workspace.

