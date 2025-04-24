# Controllo dei Privilegi Utente in Bash

Questa cartella contiene **due script Bash** che permettono di verificare se lo script è eseguito dall'utente root, usando due approcci differenti:

- Controllo tramite UID (`am-i-root.sh`)
- Controllo tramite nome utente (`check-root-name.sh`)

---

## File contenuti

- `am-i-root.sh` → Verifica se l'utente è root controllando l'UID.
- `check-root-name.sh` → Verifica se il nome utente è "root".

---

## Script 1 — `am-i-root.sh`

Verifica i privilegi dell'utente controllando l'**UID** del processo in esecuzione.

### Funzionamento

- UID `0` → utente root
- Qualsiasi altro UID → utente normale

### Esecuzione

```bash
bash am-i-root.sh          # Come utente
sudo bash am-i-root.sh     # Come root
