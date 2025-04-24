# 🐳 Migrazione periodica di un container Docker su due nodi Vagrant

Questo progetto dimostra come eseguire la **migrazione automatica di un container Docker** tra due macchine virtuali (nodo1 e nodo2) create con **Vagrant**. Il container utilizzato è `ealen/echo-server`, un semplice server HTTP di test.

## 📦 Requisiti

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- Bash (ambiente Unix-like)

## ⚙️ Descrizione del funzionamento

1. Vengono create due VM (nodo1 e nodo2) con Ubuntu 18.04 e Docker preinstallato.
2. Uno script Bash (`start.sh`) avvia il container `echo-server` su nodo1.
3. Il container resta attivo per 60 secondi (con barra di caricamento visuale).
4. Il container viene arrestato e rimosso da nodo1.
5. Lo stesso container viene avviato su nodo2 per altri 60 secondi.
6. Il ciclo continua all'infinito, alternando l’esecuzione del container tra i due nodi.

## ▶️ Avvio del progetto

1. Clona la repository:
   ```bash
   git clone https://github.com/liviuminzatu/formazione_sou.git
   

