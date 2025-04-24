# Script Parametri Bash

Questo script Bash mostra come leggere e gestire **parametri da linea di comando**, verificandone la presenza e stampandone i valori. È utile per comprendere come interagire con gli argomenti in uno script.

---

## Cosa fa lo script

1. Stampa il **nome dello script** con e senza percorso (`$0`, `basename $0`)
2. Verifica e stampa i primi **dieci parametri** (`$1`, `$2`, ..., `${10}`)
3. Mostra **tutti i parametri ricevuti** con `$*`
4. Controlla se sono stati passati **almeno 10 parametri**
   - In caso contrario, stampa un messaggio di avviso

---

## Esecuzione

Per avviare lo script, passa i parametri direttamente da terminale:

```bash
bash nome_script.sh arg1 arg2 arg3 ... arg10
