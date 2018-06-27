; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define ApplicationVersion GetFileVersion('T:\Driver4VR\Distribution\Driver4VR.exe')

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4f898184-79c2-11e8-adc0-fa7ae01bbebc}
AppName=ALVR Client
AppVersion={#ApplicationVersion}
AppVerName=ALVR Client
AppPublisher=polygraphene
AppPublisherURL=https://github.com/polygraphene/ALVR
AppSupportURL=https://github.com/polygraphene/ALVR
AppUpdatesURL=https://github.com/polygraphene/ALVR
DefaultDirName={pf}\ALVR for SteamVR
DefaultGroupName=ALVR for SteamVR
LicenseFile=license.txt
OutputDir=..\Setup
OutputBaseFilename=alvr-steamvr-setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin

[Dirs]
Name: "{app}"; 
Name: "{app}\logs"; Permissions: everyone-full

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\ALVR\bin\Release\ALVR.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\ALVR\bin\Release\MetroFramework.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\ALVR\bin\Release\MetroFramework.Fonts.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "..\driver\*"; DestDir: "{app}\driver\"; Flags: ignoreversion recursesubdirs createallsubdirs   

[Icons]
Name: "{group}\ALVR"; Filename: "{app}\ALVR.exe"  

[UninstallDelete]
;This works only if it is installed in default location
Type: filesandordirs; Name: "{pf}\ALVR"

;This works if it is installed in custom location
Type: files; Name: "{app}\*"; 
Type: filesandordirs; Name: "{app}"

