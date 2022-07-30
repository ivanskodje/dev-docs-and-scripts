# VSCode Scripts

----

## /windows

These are Powershell scripts for opening VSCode in with certain profiles (extensions and settings) on Windows.  
This allows you to not bloat VSCode with extensions not relevant to your current programming language.

These scripts will create a `vscode_profiles` folder in your user home directory when you run them.

### Example of Use
To open with React profile navigate to the project folder, open PowerShell or your favorite terminal window, and run `code-react .` to open VSCode in that folder.

### Easy Install

1. Run a new Terminal/Powershell as Administrator (right click, Run as Administrator)
2. Navigate to this folder
3. Run `.\setup-vscode-scripts.ps1`

### Manual Install

#### Create a /bin/ folder and add to Path ENV

You need to place the scripts in a folder that is accessable from anywhere. A "Path" system environment variable folder. 

1. Search for "System Environment Variables" and open it.
2. Double click Path variable
3. Create a new folder in `C:/bin/` and add it as a new folder
4. Place scripts within the `C:/bin/` folder.

#### Copy & Paste the scripts

Copy and paste the `/windows/*.ps1` scripts in your `/bin/` folder. Then reopen a powershell window (or CMD) and you can start using it. 
