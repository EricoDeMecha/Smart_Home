# Smart_Home

## Setup
### Qt for Android Setup
Resource: https://www.qt.io/blog/getting-started-with-qt-for-android

- Download and execute/run [Qt online installer](https://doc.qt.io/qt-6/qt-online-installation.html). 
- Select android among other components in the component selection window and install. 
- Install.
- Launch Qt creator and select _edit->preferences->devices->android_ as follows

[Qt Creator devices android](https://imgur.com/jUdVjY5.png)

- Click ```setup SDK``` button. Qt will download all its required android SDKs.

#### Install Verification

- In the _edit->preferences->kits_ tab Qt for android kit would be auto-detected and shortlisted among your kits if the setup was correct. 
- In case not try the following solutions.

#### Issues and Solution 

- Incase you have already installed Qt components including android and your setup does not still auto-detect android kit delete Qt creator's cache and relaunch Qt creator.
    - In debian-based linux this is found in ```~/.cache/QtProject/QtCreator```.

