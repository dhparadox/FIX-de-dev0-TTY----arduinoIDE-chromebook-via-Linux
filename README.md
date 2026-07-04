# FIX-de-dev0-TTY----arduinoIDE-chromebook-via-Linux
consertando bug de nao aparecer porta mesmo com arduino selecionado

# Arduino IDE 2.x no Chromebook (Crostini) — Fix do menu "Port"

## Problema
- `/dev/ttyACM0` existe
- Arduino conectado e reconhecido via `ls /dev/ttyACM0`
- Arduino IDE abre normalmente
- Mas **Tools → Port não aparece**

---

## Causa provável
Bug no Electron + cache corrompido do Arduino IDE (serial-discovery não inicializa corretamente no Crostini)

---

## Solução padrão (funciona na maioria dos casos)

### 1. Fechar a IDE completamente

---

### 2. Limpar caches da Arduino IDE

```bash
rm -rf ~/.arduinoIDE ~/.config/arduino-ide ~/.cache/arduino
