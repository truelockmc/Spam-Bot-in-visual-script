msgbox "Lesen sie dies bitte vollstaendig durch: Beachte das wenn du waehrend des Spamvorgangs etwas anklickst der Spam aufhoeren wird da er das Eingabefeld nicht mehr erkennt. ",16,"Info"
i = 0 : s = ""
Wscript.sleep 2000
do
  s = s & i & ", "
  i = i+1
Set wshshell = wscript.CreateObject("WScript.Shell") 
wscript.sleep 150
wshshell.sendkeys "Text der gespammt werden soll"
wscript.sleep 150
wshshell.sendkeys "{ENTER}"
loop while i < 50