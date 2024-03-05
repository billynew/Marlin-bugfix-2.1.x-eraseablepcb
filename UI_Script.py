import tkinter as tk
from tkinter import filedialog, messagebox, ttk
import re
from math import sqrt


# Your functions go here


def update_spindle_gcode(file_contents):
    modified_content = replace_line_if_contains(file_contents, 'M03', 'M280 P0 S160') # use M280 S160 to turn on the spindle
    return replace_line_if_contains(modified_content, 'M05', 'M280 P0 S40') # use M280 S40 to turn off the spindle

def remove_spindle_gcode(file_contents):
    """
    Remove spindle-related G-code commands from the GCode content in memory.

    :param file_contents: The contents of the G-code file as a single string.
    :return: Modified G-code as a single string with spindle-related lines removed.
    """
    commands_to_remove = ['M03', 'M05', 'M280 P0 S40', 'M280 P0 S160']
    modified_content = remove_gcode_lines_in_place(file_contents, commands_to_remove)
    return modified_content
    
    
def replace_line_if_contains(file_contents, search_string, replacement_string):
    """
    Replaces each line containing the specified search string with the replacement string in the GCode content in memory.

    :param file_contents: The contents of the G-code file as a single string.
    :param search_string: The string to search for within each line of the GCode.
    :param replacement_string: The string to replace the entire line with if the search string is found.
    :return: Modified G-code as a single string with specified lines replaced.
    """
    lines = file_contents.splitlines(keepends=True)
    modified_content = [replacement_string + '\n' if search_string in line else line for line in lines]
    return ''.join(modified_content)

def insert_line_before(file_contents, new_line, target_line):
    """
    Inserts a new line before a specific target line in the GCode content in memory.

    :param file_contents: The contents of the G-code file as a single string.
    :param new_line: The line to insert before the target line.
    :param target_line: The line before which the new line will be inserted.
    :return: Modified G-code as a single string with the new line inserted.
    """
    lines = file_contents.splitlines(keepends=True)
    modified_content = []
    for line in lines:
        if target_line in line:
            modified_content.append(new_line + '\n')
        modified_content.append(line)
    return ''.join(modified_content)


def adjust_z_height(file_contents, z_adjustment):
    """
    Adjust the Z-height of lines starting with 'G01 Z' in the provided G-code content.
    :param file_contents: The contents of the G-code file as a single string.
    :param z_adjustment: The amount to adjust the Z-height by.
    :return: Modified G-code as a single string.
    """
    new_content = []
    lines = file_contents.splitlines(keepends=True)
    for line in lines:
        if line.startswith('G01 Z'):
            parts = line.split()
            z_part_index = None
            for i, part in enumerate(parts):
                if part.startswith('Z'):
                    z_part_index = i
                    break
            if z_part_index is not None:
                current_z_value = float(parts[z_part_index][1:])
                new_z_value = current_z_value + z_adjustment
                parts[z_part_index] = 'Z{:.3f}'.format(new_z_value)
                line = ' '.join(parts) + '\n'
        new_content.append(line)
    return ''.join(new_content)

            

def add_extrusion_to_gcode(file_contents, extrusion_per_mm=0.05):
    """
    Adds extrusion distances to G-code lines with XY moves, operating in memory.

    :param file_contents: The contents of the G-code file as a single string.
    :param extrusion_per_mm: Extrusion rate per mm of XY movement.
    :return: Modified G-code as a single string.
    """
    lines = file_contents.splitlines(keepends=True)
    new_lines = []
    last_x, last_y, extrusion = None, None, 0.0

    for line in lines:
        if line.startswith('G01') and ('X' in line or 'Y' in line):
            x_match = re.search(r'X(-?\d+(\.\d+)?)', line)
            y_match = re.search(r'Y(-?\d+(\.\d+)?)', line)
            x = float(x_match.group(1)) if x_match else last_x
            y = float(y_match.group(1)) if y_match else last_y

            if last_x is not None and last_y is not None:
                distance = sqrt((x - last_x) ** 2 + (y - last_y) ** 2)
                extrusion += distance * extrusion_per_mm
                line = line.strip() + f' E{extrusion:.5f}\n'

            last_x, last_y = x, y
        new_lines.append(line)

    return ''.join(new_lines)

def remove_gcode_lines_in_place(file_contents, commands_to_remove):
    """
    Remove lines containing specific G-code commands from the GCode content in memory.

    :param file_contents: The contents of the G-code file as a single string.
    :param commands_to_remove: A list of command strings to remove, e.g., ['G1', 'M3'].
    :return: Modified G-code as a single string with specified lines removed.
    """
    lines = file_contents.splitlines(keepends=True)
    modified_content = [line for line in lines if not any(command in line for command in commands_to_remove)]
    return ''.join(modified_content)

# GUI Enhancement
# Function to load a GCode file into memory
def load_file():
    file_path = filedialog.askopenfilename(filetypes=[("GCode files", "*.gcode")])
    if file_path:
        with open(file_path, 'r') as file:
            file_contents.set(file.read())
        messagebox.showinfo("Info", "File loaded into memory.")

# Function to save the modified GCode from memory to a file
def save_file():
    file_contents_to_save = file_contents.get()
    if not file_contents_to_save:
        messagebox.showwarning("Warning", "No file loaded into memory.")
        return
    file_to_save = filedialog.asksaveasfilename(defaultextension=".gcode", filetypes=[("GCode files", "*.gcode")])
    if file_to_save:
        with open(file_to_save, 'w') as file:
            file.write(file_contents_to_save)
        messagebox.showinfo("Success", "File saved from memory to disk.")

# Function to update the in-memory GCode content using one of the processing functions
def update_gcode(process_function, *args):
    current_contents = file_contents.get()
    new_contents = process_function(current_contents, *args)
    file_contents.set(new_contents)
    


root = tk.Tk()
root.title("GCode Processing Tool")
root.geometry("500x300")  # Width x Height

main_frame = ttk.Frame(root, padding="10 10 10 10")
main_frame.pack(fill=tk.BOTH, expand=True)

file_contents = tk.StringVar(root)  # Use StringVar to hold file contents in memory


# File path entry and label
tk.Label(main_frame, text="GCode File:").grid(row=0, column=0, sticky=tk.W)
file_path_entry = ttk.Entry(main_frame, width=50)
file_path_entry.grid(row=0, column=1, sticky=(tk.W, tk.E))
ttk.Button(main_frame, text="Load File", command=load_file).grid(row=0, column=2, sticky=tk.W)

# Cutting Frame
cutting_frame = ttk.LabelFrame(main_frame, text="Cutting Gcode", padding="10 10 10 10")
cutting_frame.grid(row=1, column=0, columnspan=4, sticky=(tk.W, tk.E), pady=10)

# Extrusion Frame
extrusion_frame = ttk.LabelFrame(main_frame, text="Extrusion Gcode", padding="10 10 10 10")
extrusion_frame.grid(row=5, column=0, columnspan=4, sticky=(tk.W, tk.E), pady=10)

# Each major function gets a button
ttk.Button(cutting_frame, text="Update Spindle Control", command=lambda : update_gcode(update_spindle_gcode)).grid(row=0, column=0, sticky=(tk.W, tk.E), padx=5, pady=5)
ttk.Button(cutting_frame, text="Spindle Pause Control", command=lambda : update_gcode(insert_line_before, 'G4 P1000', 'M280 P0 S40')).grid(row=0, column=1, sticky=(tk.W, tk.E), padx=5, pady=5)
ttk.Button(cutting_frame, text="Init Spindle", command=lambda : update_gcode(insert_line_before, 'M280 P0 S40', 'M0')).grid(row=0, column=2, sticky=(tk.W, tk.E), padx=5, pady=5)


ttk.Button(extrusion_frame, text="Add Extrusion", command=lambda : update_gcode(add_extrusion_to_gcode)).grid(row=1, column=0, sticky=(tk.W, tk.E), padx=5, pady=5)
ttk.Button(extrusion_frame, text="Remove Spindle Code", command=lambda : update_gcode(remove_spindle_gcode)).grid(row=1, column=1, sticky=(tk.W, tk.E), padx=5, pady=5)

# Save File Button
ttk.Button(main_frame, text="Save File", command=save_file).grid(row=7, column=0, columnspan=3, pady=10)


for child in main_frame.winfo_children(): 
    child.grid_configure(padx=5, pady=5)

root.mainloop()
