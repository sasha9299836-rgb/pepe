# Makefile для игрового проекта

# Установка зависимостей проекта
install:
	uv sync

# Запуск основного игрового приложения
VD-games:
	uv run games-app

# Запуск игры "Проверка на чётность"
VD-even:
	uv run VD-even

# Сборка пакета
build:
	uv build

# Очистка собранных файлов
clean:
	rm -rf dist/ build/ *.egg-info

# Полная пересборка
rebuild: clean build

# Проверка кода линтером
lint:
	uv run ruff check games_project_lazarenko/

# Форматирование кода
format:
	uv run ruff format games_project_lazarenko/

# Проверка и форматирование
check: lint format

# Запуск тестов (если будут)
test:
	uv run python -m pytest

# Помощь по командам
help:
	@echo "Доступные команды:"
	@echo "  make install       - Установить зависимости"
	@echo "  make VD-games      - Запустить основное приложение"
	@echo "  make VD-even       - Запустить игру 'Проверка на чётность'"
	@echo "  make build         - Собрать пакет"
	@echo "  make clean         - Очистить собранные файлы"
	@echo "  make rebuild       - Полная пересборка"
	@echo "  make lint          - Проверить код линтером"
	@echo "  make format        - Отформатировать код"
	@echo "  make check         - Проверить и отформатировать код"

VD-calc:
	uv run VD-calc

VD-gcd:
	uv run VD-gcd

VD-progression:
	uv run VD-progression

VD-prime:
	uv run VD-prime
