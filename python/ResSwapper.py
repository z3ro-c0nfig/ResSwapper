import os
import tkinter as tk
from tkinter import ttk
from tkinter import messagebox

def run_batch_file(resolution):
    username = os.getlogin()  # Automatically get the username
    base_path = f"C:\\Program Files (x86)\\ResSwapper\\bat"

    # Construct the batch file path
    batch_file_path = os.path.join(base_path, resolution, "swap.bat")

    try:
        # Check if the batch file exists
        if os.path.exists(batch_file_path):
            # Use os.startfile to run the batch file
            os.startfile(batch_file_path, "open")

            # Display a customized popup after running the batch file
            messagebox.showinfo(
                "ResSwapper V2",  # Title
                "Made by Kaasblokje",  # Message
                icon=messagebox.INFO,  # INFO icon
                parent=root,  # Specify the parent window
                type=messagebox.OK  # OK button
            )
        else:
            # Display an error popup if the batch file does not exist
            messagebox.showerror("Error", f"Batch file not found:\n{batch_file_path}", parent=root)
    except Exception as e:
        # Display an error popup
        messagebox.showerror("Error", f"An error occurred:\n{str(e)}", parent=root)

def create_buttons(tab, resolutions, tab_name):
    if tab_name == "Options":
        # Create an exit button in the "Options" tab
        button_text = "Exit"
        command = on_close  # Close the application if "Exit" is clicked
        button = tk.Button(tab, text=button_text, command=command, width=15)
        button.pack(side="top")

        # Add "More Coming Soon" label centered under the "Exit" button
        label = tk.Label(tab, text="More Coming Soon", fg="black")
        label.pack(side="bottom")
    else:
        for resolution in resolutions:
            button_text = resolution
            command = lambda res=resolution: run_batch_file(res)

            button = tk.Button(tab, text=button_text, command=command, width=15)
            button.pack()

def create_tab(tab_name):
    tab = ttk.Frame(notebook)
    notebook.add(tab, text=tab_name)

    resolutions = ["2560x1440", "1920x1080", "1680x1080", "1600x1080", "1440x1080", "1400x1050", "1280x1080", "1280x1024", "1024x1024", "1024x768"]

    create_buttons(tab, resolutions, tab_name)

def on_close():
    # Handle window closing event
    root.destroy()

# Display a warning message when the program starts
messagebox.showwarning(
    "ResSwapper V2",
    "WARNING! THIS PROGRAM MODIFIES DISPLAY SETTINGS!\n"
    "USE IT AT YOUR OWN RISK!",
    icon=messagebox.WARNING,
    parent=None
)

messagebox.showwarning(
    "ResSwapper V2",
    "YT: www.youtube.com/@echtkaasblokje\n"
    "DONATE: www.buymeacoffee.com/kaasblokje",
    icon=messagebox.INFO,
    parent=None
)

root = tk.Tk()
root.title("ResSwapper V2")
root.geometry("125x295")

# Set the window style to "toolwindow" to hide the maximize button
root.wm_attributes("-toolwindow", 1)

# Set a transparent icon to hide the window icon
root.iconbitmap(default='')

# Disable window resizing
root.resizable(False, False)

# Add a protocol to handle the window closing event
root.protocol("WM_DELETE_WINDOW", on_close)

# Style to configure the notebook tab padding
style = ttk.Style()
style.configure("TNotebook.Tab", padding=(5, 5))

notebook = ttk.Notebook(root)

# Create tabs with buttons
create_tab("Swap")
create_tab("Options")

notebook.pack(expand=1, fill="both")

root.mainloop()
