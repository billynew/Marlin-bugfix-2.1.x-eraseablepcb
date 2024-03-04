import re
from math import sqrt

def replace_line_if_contains(file_name, search_string, replacement_string):
    # Read the file and store lines in a list
    with open(file_name, 'r') as file:
        lines = file.readlines()

    # Modify the lines that contain the search string
    lines = [replacement_string + '\n' if search_string in line else line for line in lines]

    # Write the modified lines back to the file
    with open(file_name, 'w') as file:
        file.writelines(lines)


def insert_line_before(file_path, new_line, target_line):
    """
    Inserts a new line before a specific target line in a file.
    
    :param file_path: Path to the file where the line will be inserted.
    :param new_line: The line to insert before the target line.
    :param target_line: The line before which the new line will be inserted.
    """
    # Ensure the new line ends with a newline character
    if not new_line.endswith('\n'):
        new_line += '\n'
    
    # Read the original file content
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Open the file in write mode to update it
    with open(file_path, 'w') as file:
        for line in lines:
            # If the current line is the target, insert the new line before it
            if target_line in line:
                file.write(new_line)
            file.write(line)


def adjust_z_height(gcode_file_path, adjusted_file_path, height_adjustment):
    with open(gcode_file_path, 'r') as file:
        lines = file.readlines()

    adjusted_lines = []
    for line in lines:
        if ' Z' in line:  # Check if the line contains a Z height specification
            parts = line.split(' ')
            new_line_parts = []
            for part in parts:
                if part.startswith('Z'):
                    try:
                        # Extract the current Z height and adjust it
                        z_value = float(part[1:])
                        z_value += height_adjustment
                        new_line_parts.append(f'Z{z_value:.3f} \n')  # Format with 3 decimal places
                    except ValueError:
                        # In case of conversion error, keep the original part
                        new_line_parts.append(part)
                else:
                    new_line_parts.append(part)
            adjusted_lines.append(' '.join(new_line_parts))
        else:
            adjusted_lines.append(line)
            
    # Write the adjusted lines to a new file
    with open(adjusted_file_path, 'w') as file:
        file.writelines(adjusted_lines)
            


def add_extrusion_to_gcode(input_file, output_file, extrusion_per_mm=0.05):
    """
    Adds extrusion distances to G-code lines with XY moves.

    :param input_file: Path to the input G-code file.
    :param output_file: Path to save the modified G-code file.
    :param extrusion_per_mm: Extrusion rate per mm of XY movement.
    """
    # Initialize variables
    last_x = None
    last_y = None
    extrusion = 0.0
    
    with open(input_file, 'r') as file:
        lines = file.readlines()

    with open(output_file, 'w') as file:
        for line in lines:
            # Check if the line contains XY movement
            if line.startswith('G01') and ('X' in line or 'Y' in line):
                # Extract X and Y coordinates if present
                x_match = re.search(r'X(-?\d+(\.\d+)?)', line)
                y_match = re.search(r'Y(-?\d+(\.\d+)?)', line)
                x = float(x_match.group(1)) if x_match else last_x
                y = float(y_match.group(1)) if y_match else last_y
                
                # Calculate movement distance and update extrusion if not the first move
                if last_x is not None and last_y is not None:
                    distance = sqrt((x - last_x) ** 2 + (y - last_y) ** 2)
                    extrusion += distance * extrusion_per_mm
                    # Append extrusion to line
                    line = line.strip() + f' E{extrusion:.5f}\n'
                
                # Update last known positions
                last_x, last_y = x, y
            
            file.write(line)

            
file_name = 'test5.gcode'            
insert_line_before(file_name, 'M280 P0 S40', 'M0') # make sure that the spinder is activated
replace_line_if_contains(file_name, 'M03', 'M280 P0 S160') # use M280 S160 to turn on the spindle
replace_line_if_contains(file_name, 'M05', 'M280 P0 S40') # use M280 S40 to turn off the spindle
insert_line_before(file_name, 'G4 P1000', 'M280 P0 S40') # make sure the spindle turns off after it reach the target

#add_extrusion_to_gcode(file_name, 'test5_extrude.gcode') # if need to do extrusion, use this

#adjust_z_height('copper.nc','modifiedcode.txt', 1.58)