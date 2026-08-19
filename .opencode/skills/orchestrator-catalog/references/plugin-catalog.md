# Каталог скиллов knowledge-work-plugins

Полный список скиллов по доменам. Каждый скилл — файл `SKILL.md` с инструкциями и workflow, который агент загружает по релевантности. Коннекторы (CRM, базы, Slack и т.д.) подключаются отдельно через MCP-серверы.

## Что для чего

| Задача пользователя | Домен | Скиллы |
|---|---|---|
| Продажи, аутрич, звонки, воронка | sales | account-research, call-prep, draft-outreach, forecast, pipeline-review |
| Маркетинг, контент, кампании, SEO | marketing | draft-content, content-creation, campaign-plan, seo-audit, performance-report |
| Финансы, сверка, отчётность, закрытие | finance | journal-entry-prep, reconciliation, close-management, variance-analysis, financial-statements |
| Данные, SQL, аналитика, дашборды | data | write-query, analyze, build-dashboard, create-viz, validate-data |
| Право, контракты, NDA, комплаенс | legal | review-contract, triage-nda, compliance-check, legal-risk-assessment |
| Поддержка, тикеты, база знаний | customer-support | ticket-triage, draft-response, customer-escalation, kb-article |
| Продукт, спеки, роадмап, исследования | product-management | write-spec, roadmap-update, sprint-planning, synthesize-research |
| HR, найм, онбординг, компенсации | human-resources | recruiting-pipeline, draft-offer, onboarding, comp-analysis, performance-review |
| Инженерия, код-ревью, инциденты | engineering | code-review, system-design, incident-response, deploy-checklist, documentation |
| Дизайн, UX, доступность, ресёрч | design | design-critique, design-system, accessibility-review, user-research |
| Операции, процессы, риски, вендоры | operations | process-doc, risk-assessment, change-request, runbook, vendor-review |
| Логистика, доставка, склад, перевозки, контейнеры | logistics | route-planning, shipment-tracking, warehouse, procurement, freight, container-shipping |
| Малый бизнес, payroll, месячные процессы | small-business | plan-payroll, close-month, cash-flow-snapshot, invoice-chase, tax-prep |
| Поиск по всем инструментам компании | enterprise-search | search, search-strategy, digest, knowledge-synthesis |
| Личная продуктивность, память, задачи | productivity | task-management, memory-management, update |

## Скиллы по доменам

### productivity
Управление задачами, планирование дня, память о контексте работы. Синхронизируется с календарём, почтой и чатом.
Скиллы: `start`, `task-management`, `memory-management`, `update`.

### sales
Проспектинг, аутрич, стратегия сделок, подготовка к звонкам, воронка.
Скиллы: `account-research`, `call-prep`, `call-summary`, `competitive-intelligence`, `create-an-asset`, `daily-briefing`, `draft-outreach`, `forecast`, `pipeline-review`.

### marketing
Контент, кампании, анализ эффективности, бренд-войс, конкурентные брифы.
Скиллы: `brand-review`, `campaign-plan`, `competitive-brief`, `content-creation`, `draft-content`, `email-sequence`, `performance-report`, `seo-audit`.

### finance
Журнальные проводки, сверка счетов, финотчётность, анализ отклонений, аудит, закрытие периода, SOX.
Скиллы: `audit-support`, `close-management`, `financial-statements`, `journal-entry`, `journal-entry-prep`, `reconciliation`, `sox-testing`, `variance-analysis`.

### data
SQL-запросы, исследование данных, статистический анализ, визуализации, дашборды, валидация.
Скиллы: `analyze`, `build-dashboard`, `create-viz`, `data-context-extractor`, `data-visualization`, `explore-data`, `sql-queries`, `statistical-analysis`, `validate-data`, `write-query`.

### legal
Проверка контрактов, триаж NDA, комплаенс, юридические брифы, оценка рисков, вендор-чеки.
Скиллы: `brief`, `compliance-check`, `legal-response`, `legal-risk-assessment`, `meeting-briefing`, `review-contract`, `signature-request`, `triage-nda`, `vendor-check`.

### customer-support
Триаж тикетов, черновики ответов, эскалации, исследование контекста клиента, база знаний.
Скиллы: `customer-escalation`, `customer-research`, `draft-response`, `kb-article`, `ticket-triage`.

### product-management
Спеки, роадмапы, синтез пользовательских исследований, апдейты стейкхолдеров, конкурентный ландшафт.
Скиллы: `competitive-brief`, `metrics-review`, `product-brainstorming`, `roadmap-update`, `sprint-planning`, `stakeholder-update`, `synthesize-research`, `write-spec`.

### human-resources
Рекрутинг, онбординг, перфоманс-ревью, анализ компенсаций, политики, планирование org.
Скиллы: `comp-analysis`, `draft-offer`, `interview-prep`, `onboarding`, `org-planning`, `people-report`, `performance-review`, `policy-lookup`, `recruiting-pipeline`.

### engineering
Стендапы, код-ревью, архитектура, отладка, инциденты, документация, тестирование, техдолг, деплой.
Скиллы: `architecture`, `code-review`, `debug`, `deploy-checklist`, `documentation`, `incident-response`, `standup`, `system-design`, `tech-debt`, `testing-strategy`.

### design
Критика дизайна, дизайн-системы, UX-копирайтинг, доступность, синтез исследований, хендофф.
Скиллы: `accessibility-review`, `design-critique`, `design-handoff`, `design-system`, `research-synthesis`, `user-research`, `ux-copy`.

### operations
Управление вендорами, документирование процессов, управление изменениями, capacity-планирование, комплаенс-трекинг.
Скиллы: `capacity-plan`, `change-request`, `compliance-tracking`, `process-doc`, `process-optimization`, `risk-assessment`, `runbook`, `status-report`, `vendor-review`.

### logistics
Доставка и маршруты, склад и запасы, закупки и поставки, грузоперевозки и таможня, морские контейнерные перевозки.
Скиллы: `container-shipping`, `freight`, `procurement`, `route-planning`, `shipment-tracking`, `warehouse`.

### enterprise-search
Единый поиск по всем инструментам компании: почта, чат, документы, вики.
Скиллы: `digest`, `knowledge-synthesis`, `search`, `search-strategy`, `source-management`.

### small-business
Готовые процессы малого бизнеса: payroll, закрытие месяца, недельные брифы, кампании роста, работа с QuickBooks, PayPal, HubSpot и другими инструментами.
Скиллы: `business-pulse`, `call-list`, `canva-creator`, `cash-flow-snapshot`, `close-month`, `content-strategy`, `contract-review`, `crm-cleanup`, `crm-maintenance`, `customer-pulse`, `customer-pulse-check`, `friday-brief`, `handle-complaint`, `invoice-chase`, `job-post-builder`, `lead-triage`, `margin-analyzer`, `monday-brief`, `month-end-prep`, `month-heads-up`, `plan-payroll`, `price-check`, `quarterly-review`, `review-contract`, `run-campaign`, `sales-brief`, `smb-onboard`, `smb-router`, `tax-prep`, `tax-season-organizer`, `ticket-deflector`.

### cowork-plugin-management
Создание и кастомизация плагинов под инструменты и процессы организации.
Скиллы: `create-cowork-plugin`, `cowork-plugin-customizer`.

### bio-research
Доклинические исследования: литература, геномика, приоритизация целей.
Скиллы: `instrument-data-to-allotrope`, `nextflow-development`, `scientific-problem-selection`, `scvi-tools`, `single-cell-rna-qc`, `start`.

### pdf-viewer
Просмотр, аннотация и подпись PDF в живом просмотрщике.
Скиллы: `view-pdf`.

## Partner-built плагины

| Плагин | Назначение | Скиллы |
|---|---|---|
| `slack-by-salesforce` | Поиск сообщений, отправка, канвасы в Slack | slack-messaging, slack-search |
| `apollo` | Проспектинг, обогащение лидов, загрузка последовательностей | enrich-lead, prospect, sequence-load |
| `common-room` | GTM-копайлот: исследование аккаунтов, подготовка к звонкам, аутрич | account-research, call-prep, compose-outreach, contact-research, prospect, weekly-prep-brief |
| `brand-voice` | Обнаружение бренд-войса, гайдлайны, валидация контента | brand-voice-enforcement, discover-brand, guideline-generation |
| `zoom-plugin` | Планирование и отладка Zoom-интеграций (REST, SDK, webhooks, MCP) | 30+ скиллов: setup-zoom-mcp, setup-zoom-oauth, meeting-sdk, video-sdk, rest-api, webhooks, virtual-agent и др. |