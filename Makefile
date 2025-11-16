# Makefile для игрового проекта

# Установка зависимостей проекта
install:
	uv sync

# Запуск игрового приложения
VD-games:
	uv run games-app

# Сборка пакета
build:
	uv build

# Установка пакета в систему
package-install:
	uv tool install dist/*.whl

# Очистка собранных файлов
clean:
	rm -rf dist/ build/ *.egg-info

# Полная пересборка
rebuild: clean build

# Помощь по командам
help:
	@echo "Доступные команды:"
	@echo "  make install       - Установить зависимости"
	@echo "  make VD-games      - Запустить игровое приложение"
	@echo "  make build         - Собрать пакет"
	@echo "  make package-install - Установить пакет в систему"
	@echo "  make clean         - Очистить собранные файлы"
	@echo "  make rebuild       - Полная пересборка"
