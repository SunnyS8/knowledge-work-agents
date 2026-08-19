# AGENTS.md

Агентская система на базе скиллов и плагинов [knowledge-work-plugins](https://github.com/SunnyS8/knowledge-work-plugins), адаптированная для работы в opencode на любой модели (в т.ч. DeepSeek).

## Архитектура

```
./
├── opencode.json                      # конфиг: default_agent, MCP (disabled-примеры)
├── AGENTS.md
├── README.md
├── scripts/sync-skills.ps1            # обновление скиллов из маркетплейса
├── .opencode/
│   ├── agents/                        # агенты (markdown + frontmatter)
│   │   ├── orchestrator.md            # primary-агент-диспетчер (по умолчанию)
│   │   └── *-specialist.md            # 13 специалистов-субагентов
│   ├── skills/                        # скиллы (папка → SKILL.md)
│   │   ├── orchestrator*              # 4 скилла оркестратора
│   │   ├── connectors/                # проверка и подключение MCP
│   │   ├── orchestrator-sync/         # обновление из маркетплейса
│   │   └── <domain>-<skill>/          # портированные скиллы маркетплейса
│   └── command/                       # команды: /orchestrate, /catalog, /workflow
└── orchestrator/                      # (опционально) исходный Cowork-плагин
```

## Как работать с системой

1. **Агент по умолчанию** — `orchestrator` (диспетчер). Он определяет домен задачи и делегирует специалисту через Task или ведёт сквозной процесс.
2. **Специалисты** (`-specialist` субагенты) выполняют работу домена, загружая свои скиллы через инструмент `skill`.
3. **Скиллы** — инструкции и workflow. Названия вида `<domain>-<skill>` (напр., `sales-call-prep`).
4. **Автономный режим:** если нужный внешний инструмент (CRM, база) не подключён — работаем по данным пользователя и честно говорим о статусе коннектора.

## Правила

- Отвечать на русском языке.
- Действия, затрагивающие деньги, клиентов или юридические обязательства — только после явного подтверждения пользователя (финансы, право, small-business).
- Не выдумывать скиллы, агентов и URL — только из каталога и `connectors/references/connectors.md`.
- Не логировать и не коммитить секреты.

## Обновление скиллов из маркетплейса

```powershell
powershell -ExecutionPolicy Bypass -File scripts/sync-skills.ps1
```

Скрипт клонирует `SunnyS8/knowledge-work-plugins` и перепортирует скиллы в `.opencode/skills/` с корректными именами (имя = папка, UTF-8 без BOM). После обновления перезапусти opencode.

## Добавление новых скиллов/агентов

- Скилл: создать папку `.opencode/skills/<name>/SKILL.md` (frontmatter: `name` + `description`, имя = имя папки, 1–64 симв., lowercase-hyphen).
- Агент: `.opencode/agents/<name>.md` (frontmatter: `description` обязателен, `mode: subagent`/`primary`; тело файла = системный промпт).
- Команда: `.opencode/command/<name>.md` (тело = шаблон, `$ARGUMENTS` = ввод пользователя).
- После изменений конфига/скиллов/агентов — перезапуск opencode.