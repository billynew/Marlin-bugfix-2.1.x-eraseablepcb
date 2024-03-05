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


def adjust_z_height(file_path, z_adjustment):
    """
    Adjust the Z-height of lines starting with 'G01 Z' in a G-code file.

    :param file_path: Path to the G-code file.
    :param z_adjustment: The amount to adjust the Z-height by.
    """
    updated_lines = []
    with open(file_path, 'r') as file:
        for line in file:
            if line.startswith('G01 Z'):
                parts = line.split()
                z_part_index = None
                # Find the Z-value part and its index
                for i, part in enumerate(parts):
                    if part.startswith('Z'):
                        z_part_index = i
                        break
                if z_part_index is not None:
                    # Extract the current Z value, adjust it, and update the line
                    current_z_value = float(parts[z_part_index][1:])  # Remove 'Z' and convert to float
                    new_z_value = current_z_value + z_adjustment
                    parts[z_part_index] = 'Z{:.3f}'.format(new_z_value)  # Format to 3 decimal places
                    updated_line = ' '.join(parts)
                    updated_lines.append(updated_line + '\n')
            else:
                updated_lines.append(line)
    
    # Write the updated lines back to the file
    with open(file_path, 'w') as file:
        file.writelines(updated_lines)

            


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


def remove_gcode_lines_in_place(file_path, commands_to_remove):
    """
    Remove lines containing specific G-code commands from a file and save the changes to the same file.

    :param file_path: Path to the G-code file to be modified.
    :param commands_to_remove: A list of command strings to remove, e.g., ['G1', 'M3'].
    """
    with open(file_path, 'r') as file:
        lines = file.readlines()

    with open(file_path, 'w') as file:
        for line in lines:
            if not any(line.strip().startswith(command) for command in commands_to_remove):
                file.write(line)

            
file_name = 'test5.gcode'     

######### generating the cutting gcode ###################       
#insert_line_before(file_name, 'M280 P0 S40', 'M0') # make sure that the spinder is activated
#replace_line_if_contains(file_name, 'M03', 'M280 P0 S160') # use M280 S160 to turn on the spindle
#replace_line_if_contains(file_name, 'M05', 'M280 P0 S40') # use M280 S40 to turn off the spindle
#insert_line_before(file_name, 'G4 P1000', 'M280 P0 S40') # make sure the spindle turns off after it reach the target

########## generating extrusion gcode ############
#add_extrusion_to_gcode(file_name, 'test5_extrude.gcode') # if need to do extrusion, use this
#remove_gcode_lines_in_place('test5_extrude.gcode', 'M280 P0 S40') # remove the spindle code
#remove_gcode_lines_in_place('test5_extrude.gcode', 'M280 P0 S160') # remove the spindle code
#adjust_z_height('test5_extrude.gcode', 0) # set the z height of the gcode, presume the height should be z=0