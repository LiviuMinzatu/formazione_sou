# Log Cleanup Script

Questo semplice script Bash serve per **pulire i file di log** più comuni nel sistema Linux. È un esempio base per esercitarsi con i comandi di shell e la gestione dei file di log.

---

## Cosa fa lo script

1. Si sposta nella directory `/var/log`
2. Svuota i contenuti dei file `messages` e `wtmp` (li azzera)
3. Mostra a schermo il messaggio di conferma `"Log files cleaned up."`

---

## Attenzione

- Lo script **deve essere eseguito come `root`**, altrimenti non avrà i permessi per modificare i file di log.
- Questo script **non elimina i file**, ma ne svuota il contenuto.

---

## Esecuzione

Apri un terminale ed esegui:

```bash
sudo bash nome_script.sh
