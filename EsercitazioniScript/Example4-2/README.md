# 🧪 Script sulle variabili

Questo script Bash mostra come utilizzare le **variabili "nude" (non dichiarate esplicitamente con tipo)**, ed è un ottimo esempio per imparare le basi delle variabili in shell scripting.

---

## ⚙️ Cosa fa lo script

1. Assegna e stampa il valore di una variabile `a`
2. Riassegna un nuovo valore a `a` tramite un'espressione aritmetica
3. Esegue un ciclo `for` stampando più valori della variabile `a` sulla stessa riga
4. Chiede all'utente un nuovo valore per `a` e lo stampa

---

## Dettagli tecnici

- Usa `let` per operazioni aritmetiche
- Usa `echo -n` per stampare senza andare a capo
- Utilizza `read` per acquisire input da tastiera
- Termina con `exit 0` per indicare esecuzione riuscita

---

## ▶️ Esecuzione

Nel terminale, rendi eseguibile lo script e avvialo:

```bash
chmod +x nome_script.sh
./nome_script.sh
