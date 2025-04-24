# progress-bar2.sh

Uno script Bash che simula una **barra di progresso** durante l'esecuzione di un processo lungo. Utile per fornire feedback visivo all'utente mentre uno script è in attesa.

---

## Descrizione

Questo script:

- Mostra una barra di avanzamento usando una sequenza di `.` stampati a intervalli regolari
- Esegue in background il processo della barra
- Simula un "processo lungo" tramite `sleep`
- Interrompe la barra una volta completato il processo
- Gestisce correttamente l'uscita con `CTRL+C` grazie ai segnali e al trap

---

## Funzionamento

1. La barra stampa un punto ogni secondo (`interval=1`)
2. Il processo "lungo" dura 10 secondi (`long_interval=10`)
3. Alla fine viene stampato `Finished!`
4. In caso di interruzione (`CTRL+C`), la barra si ferma in modo ordinato

---

## Esecuzione

Assicurati di usare **`bash`** per eseguire lo script (non `sh`):

```bash
bash progress-bar2.sh
