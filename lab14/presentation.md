% Лабораторная работа №14: Bash avancé (sémaphores, man, RANDOM)
% LISSOM BAYEM ODILLON NATHANAEL
% \today

# Цель

- Программирование с синхронизацией (семафоры)
- Создание аналога `man`
- Генерация случайных последовательностей

# 1. Семафор

```bash
while [ -f "$LOCKFILE" ]; do
    echo "Attente..."
    sleep 1
done
touch "$LOCKFILE"
# utiliser la ressource
rm "$LOCKFILE"
