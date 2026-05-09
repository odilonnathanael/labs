% Лабораторная работа №13: Программирование в bash (ветвления, циклы)
% LISSOM BAYEM ODILLON NATHANAEL
% \today

# Цель

- Освоить `getopts`
- Использовать коды возврата
- Управлять файлами через циклы
- Применять `find -mtime` et `tar`

# 1. getopts

```bash
while getopts "i:o:p:Cn" opt; do
  case $opt in
    i) input="$OPTARG" ;;
    C) case_sensitive="-i" ;;
  esac
done
