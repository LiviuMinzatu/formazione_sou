# 🐳 Docker Container Migrator ⏱️

Uno script Python che **avvia e arresta automaticamente** un container Docker su due nodi Vagrant (`node1` e `node2`) **in base alla parità del minuto** attuale. È utile per simulare un comportamento di "failover" o migrazione periodica in un ambiente distribuito.

---

## ⚙️ Funzionalità

- Monitora il tempo corrente in minuti.
- Avvia il container `ealen/echo-server` su:
  - `node1` se il minuto è pari.
  - `node2` se il minuto è dispari.
- Arresta il container attivo sull'altro nodo.
- Mostra una barra di caricamento durante l'attesa.

---

## 📦 Requisiti

- [Python 3.x](https://www.python.org/)
- [Vagrant](https://www.vagrantup.com/)
- [Docker](https://www.docker.com/) installato su entrambi i nodi
- Due VM configurate in Vagrant chiamate `node1` e `node2`

---

## ▶️ Come eseguirlo

Assicurati di avere le due VM in esecuzione:

```bash
vagrant up
