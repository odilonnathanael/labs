% Лабораторная работа №12: Программирование в bash
% LISSOM BAYEM ODILLON NATHANAEL
% \today

# Цель работы

- Изучить основы программирования в оболочке bash
- Научиться писать командные файлы (скрипты)

# Переменные

- `var=value` (без пробелов)
- Использование: `$var` или `${var}`
- Массивы: `arr=(a b c)`; `${arr[0]}`

# Арифметика

- `let a=5+3`
- `(( a = 5 + 3 ))`
- `$(( a + b ))`

# Условные операторы

```bash
if [ condition ]; then
    commands
elif [ condition ]; then
    commands
else
    commands
fifor var in list; do
    commands
done

while [ condition ]; do
    commands
done
