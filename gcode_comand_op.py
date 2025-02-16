
import gcode_str_op
class MachineState:
    def __init__(self):
        # Текущая позиция (X, Y, Z)
        self.position = {'X': 0.0, 'Y': 0.0, 'Z': 0.0}
        # Режим координат: "absolute" (G90) или "relative" (G91)
        self.mode = "absolute"
        # Скорость подачи (например, F500)
        self.feed_rate = 1000  # Значение по умолчанию
class GCodeInterpreter:
    def __init__(self):
        self.state = MachineState()

        self.handlers = {
            ('G', 1): self._move,
        }
    
    def execute(self, current_command, params):
        # Ищем обработчик в словаре
        handler = self.handlers.get(current_command, self.handle_unknown)
        # Вызываем обработчик с параметрами
        handler(params)
    
    def handle_unknown(self, current_command):
        print(f"Unknown command: {current_command}")
    
    def _move(self, params):
        new_pos = self.state.position.copy()
        for par, value in params.items():
            if par in ('X', 'Y', 'Z'):
                if self.state.mode == 'absolute':
                    new_pos[par] = value
                else:
                    new_pos[par] += value
            if par in ("F"):
                self.state.feed_rate = value
        self.state.position = new_pos
        print(f"New position: {self.state.position} Feed rate: {self.state.feed_rate}")
gcode_lines = open("2test.gcode", "r")
interpreter = GCodeInterpreter()  # Создаем экземпляр

for line in gcode_lines:
    parsed = gcode_str_op.gcode_line_op(line)
    if parsed:
        command, params = parsed
        interpreter.execute(command, params)
