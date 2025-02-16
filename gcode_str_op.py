import re

def gcode_line_op(line):
    clean_line = re.sub(r';.*', '', line).strip() # Удаляем комментарии 
    if not clean_line: return None

    comands = re.findall(r'[A-Z][0-9+-.]+', clean_line) # Ищем команды
    current_command = None
    params = {}
    for com in comands:
        key = com[0].upper()
        val = (com[1:])
        if key in ('G', 'M', 'T'):
            if '.' in val:
                comand_val = float(val)
            else:
                comand_val = int(val)
            current_command = (key, comand_val)
        else:
            if '.' in val:
                param_val = float(val)
            else:
                param_val = int(val)
            params[key] = param_val
    return (current_command, params)
