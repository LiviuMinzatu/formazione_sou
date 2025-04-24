# Array Associativi in Bash: Rubrica Indirizzi

Questo script dimostra l'uso degli **array associativi** in Bash tramite una semplice rubrica che associa nomi a indirizzi.

---

## Descrizione

Lo script crea un array associativo `address` e assegna ad alcuni nomi i rispettivi indirizzi. Poi:

- Stampa i singoli indirizzi associati ai nomi
- Mostra tutte le chiavi (i nomi) presenti nella rubrica

---

## Concetti chiave

| Concetto                  | Esempio                              |
|---------------------------|--------------------------------------|
| Array associativo         | `declare -A nome_array`             |
| Assegnazione chiave/valore| `array[chiave]="valore"`            |
| Accesso ai valori         | `${array[chiave]}`                  |
| Elenco chiavi             | `${!array[*]}`                      |

---

## Esecuzione

Assicurati di usare **Bash 4.0 o superiore**, perché gli array associativi **non sono supportati** da versioni più vecchie.

```bash
bash address-book.sh
