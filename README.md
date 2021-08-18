# sh_starnet_mac
Run starnet shell for macOS.  
Script to run StarNet++ commands from anywhere.

---
# Usage
`starnet image.tif remove_stars.tif`

Option  
`starnet image.tif remove_stars.tif 32`

# Setup
### 1. Download StarNet_MacOS
https://sourceforge.net/projects/starnet/

### 2. Create .bin/StarNet_MacOS
`mkdir ~/.bin`  

> I put it in `.bin`, but it can be in another place.

Copy StarNet_MacOS(unzip) to ~/.bin/  
`cp StarNet_MacOS ~/.bin/`

### 3. Copy shell
	Copy this repository `run_rgb_startnet_.sh` to StarNet_MacOS  
	cp run_rgb_starnet_.sh ~/.bin/StarNet_MacOS/  

### 4. Permissions
```
cd ~/.bin/StarNet_MacOS
chmod +x ./rgb_starnet++
chmod +x ./run_rgb_starnet.sh
chmod +x ./run_rgb_starnet_.sh
```

### 5. Mac Permissions
Double click these files.  
```
libtensorflow_framework.so
libtensorflow.so
```

	System Preferences > Security & Privacy > General
	Click allow button.

### 6. Edit .zshrc(or .bash_profile)  
Add these.
```
export PATH=$HOME/.bin/StarNet_MacOS:$PATH

starnet() {
	DIR=$(cd $(dirname $0); pwd)
	run_rgb_starnet_.sh $DIR/$1 $DIR/$2 $3
}
```

Reopen the terminal or run this command.  
`exec $SHELL -l`

