#!/bin/bash

# 1. Chiedi il percorso della repository (root)
read -p "Inserisci il percorso della directory principale del repository Git (ad esempio: /Users/liviuminzatu/formazione_sou): " repo_root

# Verifica se è un repository Git valido
if [ ! -d "$repo_root/.git" ]; then
  echo "La directory non è un repository Git valido!"
  exit 1
fi

# 2. Chiedi la cartella in cui spostare il contenuto
dest_folder="$repo_root/EsercitazioniScript"

# Verifica se la cartella di destinazione esiste
if [ ! -d "$dest_folder" ]; then
  echo "La cartella di destinazione non esiste, creando la cartella 'EsercitazioniScript'."
  mkdir "$dest_folder"
fi

# 3. Determina il giorno corrente
giorno=$(LC_TIME=it_IT.UTF-8 date +%A)

# Mostra il giorno rilevato e conferma
echo "Oggi è: $giorno"
read -p "Confermi? (s/n): " conferma_giorno
if [ "$conferma_giorno" != "s" ]; then
  echo "Operazione annullata."
  exit 0
fi

# 4. Chiedi la cartella o il file da caricare (la directory da spostare)
read -p "Inserisci il percorso della cartella o del file che vuoi caricare nel repository (da spostare in $dest_folder): " src_path

# Verifica che la cartella/file esista
if [ ! -e "$src_path" ]; then
  echo "La cartella/file non esiste!"
  exit 1
fi

# Sposta la cartella/file nella cartella di destinazione
mv "$src_path" "$dest_folder"

# 5. Aggiungi un file .gitkeep se la cartella è vuota
if [ -d "$dest_folder/$(basename "$src_path")" ] && [ "$(ls -A "$dest_folder/$(basename "$src_path")")" ]; then
  echo "La cartella non è vuota."
else
  echo "La cartella è vuota, aggiungendo .gitkeep per forzare il caricamento su Git."
  touch "$dest_folder/$(basename "$src_path")/.gitkeep"
fi

# 6. Leggi/aggiorna il contatore per il giorno
commit_file="$repo_root/.last_commit_count"
if [ ! -f "$commit_file" ]; then
  touch "$commit_file"
fi

last_number=$(grep "^$giorno:" "$commit_file" | cut -d ':' -f2)
if [ -z "$last_number" ]; then
  last_number=1
else
  last_number=$((last_number + 1))
fi

# Aggiorna il file con il nuovo numero
grep -v "^$giorno:" "$commit_file" > "$commit_file.tmp"
echo "$giorno:$last_number" >> "$commit_file.tmp"
mv "$commit_file.tmp" "$commit_file"

# 7. Crea il messaggio di commit
commit_msg="${giorno}Update${last_number}"
echo "Il messaggio del commit sarà: \"$commit_msg\""
read -p "Procedere? (s/n): " conferma_commit
if [ "$conferma_commit" != "s" ]; then
  echo "Commit annullato."
  exit 0
fi

# 8. Aggiungi, committa e pusha nella repo
cd "$repo_root" || exit
git add .
git commit -m "$commit_msg"

# 9. Esegui git push (senza URL specificato)
echo "Pushing changes to GitHub..."
git push

# 10. Fine
echo "✅ Commit e push eseguiti con messaggio: $commit_msg"

