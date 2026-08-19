---
name: orchestrator-sync
description: >
  Используй, когда нужно обновить скиллы из маркетплейса knowledge-work-plugins, обновить каталог, синхронизировать скиллы, обновить систему после выхода новых версий плагинов. Запускает scripts/sync-skills.ps1 и объясняет, что делать после обновления.
---

# Синхронизация скиллов из маркетплейса

Обновляй портированные скиллы из репозитория knowledge-work-plugins.

## Порядок работы

1. Запусти скрипт синхронизации:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/sync-skills.ps1
```

2. Скрипт клонирует маркетплейс во временную папку, перепортирует все скиллы первой вечеринки (sales, marketing, finance, data, legal, customer-support, product-management, human-resources, engineering, design, operations, enterprise-search, productivity, small-business) и partner-built (slack, apollo, common-room, brand-voice) в `.opencode/skills/` с корректными именами (имя = папка, UTF-8 без BOM), затем удаляет временную папку.

3. **Проверь результат:**
   - количество скиллов в `.opencode/skills/`;
   - имена соответствуют формату `^[a-z0-9]+(-[a-z0-9]+)*$`;
   - у каждого скилла есть `SKILL.md` с frontmatter `name` и `description`.

4. **Обнови справочники оркестратора**, если в маркетплейсе появились новые скиллы или плагины:
   - `.opencode/skills/orchestrator-catalog/references/plugin-catalog.md`;
   - `.opencode/skills/orchestrator-route/references/routing-matrix.md`;
   - `.opencode/skills/connectors/references/connectors.md` (если изменились `.mcp.json`).

5. Сообщи пользователю, что нужно **перезапустить opencode** для загрузки обновлённых скиллов.

## Правила

- Не портируй домены со спец-инструментами без необходимости: bio-research (научные тулы), pdf-viewer (интерактивный просмотрщик), zoom-plugin (SDK-инженерия), cowork-plugin-management (создание Cowork-плагинов).
- Не трогай вручную портированные файлы, которые перезаписываются скриптом: изменения потеряются при следующей синхронизации. Кастомизацию храни в оркестраторных скиллах и агентах.
- Отвечай на русском языке.