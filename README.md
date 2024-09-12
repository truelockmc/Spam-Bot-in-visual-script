

# Spam Bot in Visual Script

This project provides a simple spam bot written in Visual Basic Script (VBS). It repeatedly sends a specified text to the currently focused input field, making it useful for automating repetitive text entry tasks.

## Features

- **Automated Text Spamming**: Automatically sends a predefined text to the currently active window.
- **Customizable Text**: Change the text being spammed by modifying the script.
- **Informative Popup**: Displays a message box with instructions before the spam begins.

## How It Works

1. **Message Box**: Upon running the script, a message box will appear informing you about the potential issue if you interact with other windows during the spam process.
2. **Spamming Process**: The script sends a specified text to the active input field repeatedly, with a delay between each message.

## Usage

1. **Download the Script**: Clone or download the script from the [GitHub repository](https://github.com/truelockmc/Spam-Bot-in-visual-script/).

    ```bash
    git clone https://github.com/truelockmc/Spam-Bot-in-visual-script.git
    cd Spam-Bot-in-visual-script
    ```

2. **Modify the Script** (Optional): Open the `spam_bot.vbs` file in a text editor and replace `"Text der gespammt werden soll"` with the text you want to spam.

    ```vbscript
    ' Example: 
    wshshell.sendkeys "Your custom text here"
    ```

3. **Run the Script**: Double-click the `spam_bot.vbs` file to execute it. Make sure the window where you want to spam text is active and focused.

## Script Breakdown

- **Message Box**: Alerts you to avoid interacting with other fields or windows during the spam operation.

    ```vbscript
    MsgBox "Lesen sie dies bitte vollstaendig durch: Beachte das wenn du waehrend des Spamvorgangs etwas anklickst der Spam aufhoeren wird da er das Eingabefeld nicht mehr erkennt.", 16, "Info"
    ```

- **Spamming Logic**: Continuously sends the specified text to the currently active input field. It stops after sending the text 50 times.

    ```vbscript
    i = 0 : s = ""
    WScript.Sleep 2000
    Do
        s = s & i & ", "
        i = i + 1
        Set wshshell = WScript.CreateObject("WScript.Shell")
        WScript.Sleep 150
        wshshell.SendKeys "Text der gespammt werden soll"
        WScript.Sleep 150
        wshshell.SendKeys "{ENTER}"
    Loop While i < 50
    ```

## Important Notes

- **Window Focus**: Ensure that the input field where you want the text to be spammed is focused when you run the script. Any interaction with other windows or fields may interrupt the spam process.
- **Script Behavior**: The script runs in an infinite loop until it completes the specified number of repetitions (50 times). 

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Disclaimer

Use this script responsibly and be aware of the legal and ethical implications of automating text input. Avoid using it for spamming purposes that violate terms of service or are considered malicious.
