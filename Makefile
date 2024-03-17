# Объявляем цели как фиктивные (phony), чтобы make понимал, что они не соответствуют реальным файлам.
.PHONY: check force

# Цель 'check' зависит от цели 'force', поэтому перед выполнением 'check' будет выполнена 'force'.
check: force
  # Устанавливаем переменную окружения NODE_OPTIONS на --experimental-vm-modules и запускаем Jest с помощью npx.
	NODE_OPTIONS=--experimental-vm-modules npx jest

# Фиктивная цель 'force', которая всегда возвращает успешный статус выполнения.
force:
  # Команда @true ничего не делает, но всегда возвращает успешный статус выполнения.
	@true
