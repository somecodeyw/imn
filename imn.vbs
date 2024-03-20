Option Explicit

Const ForReading = 1
Const ForWriting = 2
Const ForAppending = 8
Const HideWindow = 0
Const KillProcess = True

Dim objShell, objFSO, objWMIService, objProcess, objFile
Dim strScriptPath, strBatchPath, strProcessName
Dim bProcessRunning

'strBatchPath = "C:\Windows\imn\bzminer\karlsen.bat"
strBatchPath = "C:\Windows\imn\lolMiner\mine_pyrin.bat"


strProcessName = "lolMiner.exe"


Set objShell = CreateObject("WScript.Shell")

Set objFSO = CreateObject("Scripting.FileSystemObject")

strScriptPath = objFSO.GetParentFolderName(WScript.ScriptFullName)


If Not objFSO.FileExists(strBatchPath) Then
    WScript.Echo "Error: Batch file not found."
    WScript.Quit
End If


Set objWMIService = GetObject("winmgmts:\\.\root\CIMV2")


Set objProcess = objWMIService.ExecQuery("SELECT * FROM Win32_Process WHERE Name='" & strProcessName & "'")

If objProcess.Count > 0 Then

    For Each objFile In objProcess
        objFile.Terminate()
    Next
End If


objShell.Run strBatchPath, HideWindow


Set objShell = Nothing
Set objFSO = Nothing
Set objWMIService = Nothing
Set objProcess = Nothing
Set objFile = Nothing

WScript.Quit
