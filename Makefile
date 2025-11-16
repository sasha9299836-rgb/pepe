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

# Запуск игры "Калькулятор"
VD-calc:
	uv run VD-calc

# Запуск игры "НОД"
VD-gcd:
	uv run VD-gcd

# Запуск игры "Арифметическая прогрессия"
VD-progression:
	uv run VD-progression

# Запуск игры "Простое ли число?"
VD-prime:
	uv run VD-prime

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
	uv run ruff check VD_games/

# Форматирование кода
format:
	uv run ruff format VD_games/

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
	@echo "  make VD-calc       - Запустить игру 'Калькулятор'"
	@echo "  make VD-gcd        - Запустить игру 'НОД'"
	@echo "  make VD-progression - Запустить игру 'Арифметическая прогрессия'"
	@echo "  make VD-prime      - Запустить игру 'Простое ли число?'"
	@echo "  make build         - Собрать пакет"
	@echo "  make clean         - Очистить собранные файлы"
	@echo "  make rebuild       - Полная пересборка"
	@echo "  make lint          - Проверить код линтером"
	@echo "  make format        - Отформатировать код"
	@echo "  make check         - Проверить и отформатировать код"
