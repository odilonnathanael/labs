% Laboratoire 7 : Analyse du système de fichiers Linux
% Votre Nom
% \today

# Objectifs

- Maîtriser les commandes de base : `pwd`, `cd`, `ls`, `mkdir`, `rmdir`, `rm`, `cp`, `mv`
- Comprendre les droits d’accès
- Utiliser `man` pour les options
- Analyser l’espace disque et les points de montage
- Exploiter l’historique

# Commandes essentielles

- `pwd` : afficher le répertoire courant
- `cd` : changer de répertoire
- `ls` : lister (options `-l`, `-a`, `-F`)
- `mkdir` : créer un répertoire (`-p` pour arborescence)
- `rmdir` : supprimer un répertoire vide (`-p` pour récursif)
- `rm` : supprimer fichiers/répertoires (`-r`, `-f`, `-i`)
- `cp` : copier (`-r` pour récursif)
- `mv` : déplacer/renommer

# Droits d’accès

- Lecture (`r`), écriture (`w`), exécution (`x`)
- Trois catégories : propriétaire (`u`), groupe (`g`), autres (`o`)
- Modification : `chmod` en mode symbolique (`u+x`, `g-w`) ou octal (`755`)

# Analyse disque et systèmes montés

- `df -h` : espace disque
- `mount` : systèmes montés
- `/etc/fstab` : montages permanents

# Historique des commandes

- `history` : voir les commandes tapées
- `!n` : réexécuter la commande n
- `!n:s/ancien/nouveau/` : modifier puis exécuter

# Conclusion

Compétences opérationnelles sur le système de fichiers Linux.
