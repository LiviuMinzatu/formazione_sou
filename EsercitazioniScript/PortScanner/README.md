# 🔍 Scansione delle porte TCP

Uno script Bash che esegue una scansione delle porte TCP su una macchina specificata. Il programma verifica se le porte comprese tra un intervallo di numeri sono aperte o chiuse, utilizzando `nc` (netcat) per testare ogni porta.

---

## ⚙️ Funzionalità

- Scansiona le porte TCP tra due numeri specificati.
- Controlla se una porta è aperta su una macchina o host specificato.
- Utilizza il comando `nc` (netcat) per eseguire la scansione delle porte.

---

## 📦 Requisiti

- **Bash**: lo script è scritto in Bash, quindi è necessario avere un ambiente Linux/Unix con Bash.
- **Netcat**: deve essere installato il comando `nc` (netcat). Se non è installato, puoi farlo con:
  
  ```bash
  sudo apt install netcat
