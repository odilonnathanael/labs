% Лабораторная работа №5: pass и chezmoi
% LISSOM BAYEM ODILLON NATHANAEL
% \today

# Цель

- Изучить менеджер паролей `pass`
- Изучить систему управления dotfiles `chezmoi`

# Основные команды pass

- `pass init <gpg-id>` – инициализация хранилища
- `pass insert <name>` – добавить пароль
- `pass <name>` – показать пароль
- `pass generate <name> <length>` – сгенерировать пароль
- `pass git init` / `push` / `pull` – синхронизация

# Основные команды chezmoi

- `chezmoi init <repo>` – инициализация
- `chezmoi add <file>` – добавить файл
- `chezmoi apply` – применить изменения
- `chezmoi diff` – показать различия
- `chezmoi update` – обновить из репозитория

# Пример настройки новой машины

```bash
chezmoi init --apply https://github.com/user/dotfiles.git
