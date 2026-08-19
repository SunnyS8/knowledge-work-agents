# Шпаргалка: как работать с системой

Короткая инструкция для повседневной работы в opencode. Работает с DeepSeek и любой другой моделью.

## 1. Запуск

```bash
opencode
```

При старте открывается агент-оркестратор. Просто пиши задачу обычным языком — система сама выберет специалиста и скилл.

## 2. Примеры формулировок задач

| Ты пишешь | Что произойдёт |
|---|---|
| «Подготовь меня к звонку с Acme» | `sales-specialist` + скилл call-prep |
| «Исследуй компанию TechStart» | `sales-specialist` + account-research |
| «Напиши аутрич VP Engineering» | `sales-specialist` + draft-outreach |
| «Спланируй кампанию на запуск» | `marketing-specialist` + campaign-plan |
| «Сделай SEO-аудит» | `marketing-specialist` + seo-audit |
| «Сверь банк за июнь» | `finance-specialist` + reconciliation |
| «Подготовь журнальные проводки» | `finance-specialist` + journal-entry-prep |
| «Закрываем месяц» | `finance-specialist` + close-management |
| «Напиши SQL-запрос по выручке» | `data-specialist` + write-query |
| «Проанализируй этот CSV» | `data-specialist` + analyze |
| «Проверь контракт» | `legal-specialist` + review-contract |
| «Разбери NDA» | `legal-specialist` + triage-nda |
| «Разбери очередь тикетов» | `customer-support-specialist` + ticket-triage |
| «Напиши спеку фичи» | `product-management-specialist` + write-spec |
| «Обнови роадмап» | `product-management-specialist` + roadmap-update |
| «Составь оффер» | `hr-specialist` + draft-offer |
| «Сделай план онбординга» | `hr-specialist` + onboarding |
| «Проведи код-ревью» | `engineering-specialist` + code-review |
| «Разбери инцидент» | `engineering-specialist` + incident-response |
| «Проверь доступность макета» | `design-specialist` + accessibility-review |
| «Документируй процесс» | `operations-specialist` + process-doc |
| «Спланируй маршруты доставки» | `logistics-specialist` + route-planning |
| «Организуй контейнерную поставку» | `logistics-specialist` + container-shipping |
| «Спланируй payroll» | `small-business-specialist` + plan-payroll |
| «Найди по всем нашим инструментам» | `enterprise-search-specialist` + search |

## 3. Команды

| Команда | Что делает |
|---|---|
| `/orchestrate <задача>` | Явная оркестрация задачи |
| `/catalog [домен]` | Показать каталог скиллов и специалистов |
| `/workflow <процесс>` | Запустить сквозной процесс |

## 4. Прямой вызов специалиста

Хочешь сразу конкретного агента — упомяни его через `@`:

```
@finance-specialist сверь банк за июль и покажи расхождения
@legal-specialist проверь договор с вендором
```

Полный список специалистов: `sales, marketing, finance, data, legal, customer-support, product-management, hr, engineering, design, operations, logistics, small-business, enterprise-search` (+ суффикс `-specialist`).

## 5. Сквозные процессы

Задачи, где участвуют несколько доменов, оркестратор ведёт целиком по шагам:

| Процесс | Пример запроса | Какие специалисты участвуют |
|---|---|---|
| Запуск продукта (GTM) | «Запустим наш новый продукт» | product-management → marketing → sales → legal → customer-support |
| Найм сотрудника | «Нужно нанять продакт-менеджера» | hr → finance → legal → hr |
| Закрытие месяца | «Закрываем месяц» | finance → data → finance |
| Онбординг клиента | «Внедряем нового клиента» | sales → product-management → customer-support → operations |
| Внедрение изменения | «Переезжаем на новую CRM» | operations → engineering → legal → operations |

Оркестратор покажет план и спросит подтверждение перед действиями с деньгами/клиентами/юридическими обязательствами.

## 6. Подключение внешних инструментов

Сейчас скиллы работают в **автономном режиме** — по твоим данным и веб-поиску. Чтобы специалисты реально читали/писали в твои сервисы (CRM, Slack, Notion, базы), подключи MCP:

1. Спроси: «как подключить HubSpot?» — агент покажет инструкцию.
2. Либо сам добавь сервер в `opencode.json` (примеры уже есть, `enabled: false` → `true`).
3. Перезапусти opencode.

Список всех коннекторов: `.opencode/skills/connectors/references/connectors.md`.

## 7. Обновление скиллов из маркетплейса

```powershell
powershell -ExecutionPolicy Bypass -File scripts/sync-skills.ps1
```

Или просто напиши: «обнови скиллы из маркетплейса». После — перезапусти opencode.

## 8. Советы для DeepSeek

- Формулируй задачу с контекстом: «подготовь к звонку с Acme, это discovery-встреча, участники — CEO и CTO».
- Прикладывай файлы (CSV, документы) — специалист их прочитает.
- Если ответ не по теме — уточни домен: «это про финансы» или вызови специалиста напрямую через `@`.
- Сложные многошаговые задачи разбивай на этапы или запускай `/workflow`.

## 9. Где что лежит

| Файл/папка | Что это |
|---|---|
| `.opencode/agents/` | Агенты (orchestrator + 14 специалистов) |
| `.opencode/skills/` | 155 скиллов (инструкции и workflow) |
| `.opencode/command/` | Команды `/...` |
| `opencode.json` | Конфиг: default_agent, MCP |
| `AGENTS.md` | Правила, которые читает любой агент |
| `scripts/sync-skills.ps1` | Обновление из маркетплейса |
| `orchestrator/` | Исходная Cowork-версия плагина (можно удалить, если не нужна) |

## Быстрый старт за 30 секунд

```
opencode
«Что ты умеешь?»
→ «Подготовь меня к звонку с Acme»
→ «Напиши аутрич»
→ «Проверь контракт с вендором»