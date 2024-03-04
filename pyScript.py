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
            
            
# Usage example
# This will replace any line that contains 'old_text' with 'new line content\n'
insert_line_before('test5.gcode', 'M280 P0 S40', 'M0')
replace_line_if_contains('test5.gcode', 'M03', 'M280 P0 S160')
replace_line_if_contains('test5.gcode', 'M05', 'M280 P0 S40')
insert_line_before('test5.gcode', 'G4 P1000', 'M280 P0 S40')

#adjust_z_height('copper.nc','modifiedcode.txt', 1.58)