rem
rem Just shows a message passed as a parameter
rem with error (16) icon...
rem
Set objArgs = WScript.Arguments
messageText = objArgs(0)
MsgBox messageText, 16