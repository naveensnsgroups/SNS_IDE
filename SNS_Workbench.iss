; SNS Workbench Inno Setup Script
; This script bundles the VSCode-win32-x64 folder into a professional installer.

[Setup]
AppId={{SNS-WORKBENCH-IDE}}
AppName=SNS Workbench
AppVersion=1.116.0
AppPublisher=SNS Workbench
DefaultDirName={autopf}\SNS Workbench
DefaultGroupName=SNS Workbench
AllowNoIcons=yes
; Your logo for the installer
SetupIconFile=e:\Naveen\SNS_IDE\vscodium\new_brain.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
OutputDir=e:\Naveen\SNS_IDE\vscodium\Installer_Output
OutputBaseFilename=SNS_Workbench_Setup

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; This copies everything from your built folder
Source: "e:\Naveen\SNS_IDE\vscodium\VSCode-win32-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\SNS Workbench"; Filename: "{app}\SNS Workbench.exe"
Name: "{autodesktop}\SNS Workbench"; Filename: "{app}\SNS Workbench.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\SNS Workbench.exe"; Description: "{cm:LaunchProgram,SNS Workbench}"; Flags: nowait postinstall skipifsilent
