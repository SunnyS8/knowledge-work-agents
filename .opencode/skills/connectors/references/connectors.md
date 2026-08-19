# Справочник MCP-коннекторов knowledge-work-plugins

Агрегированный список MCP-серверов из `.mcp.json` всех плагинов маркетплейса. Формат подключения в `opencode.json`:

```json
"mcp": {
  "slack": { "type": "remote", "url": "https://mcp.slack.com/mcp", "enabled": false }
}
```

После изменения конфига перезапусти opencode. Серверы с пустым `url` требуют ручной настройки адреса (обычно через `/connect` или локальный stdio-сервер).

## CRM и продажи

| Сервер | URL | Где используется |
|---|---|---|
| hubspot | https://mcp.hubspot.com/anthropic | sales, marketing, customer-support, small-business |
| close | https://mcp.close.com/mcp | sales |
| clay | https://api.clay.com/v3/mcp | sales |
| zoominfo | https://mcp.zoominfo.com/mcp | sales |
| apollo | https://mcp.apollo.io/mcp | sales, apollo |
| outreach | https://api.outreach.io/mcp/ | sales |
| common-room | https://mcp.commonroom.io/mcp | common-room |

## Коммуникации

| Сервер | URL | Где используется |
|---|---|---|
| slack | https://mcp.slack.com/mcp | почти все плагины |
| microsoft-365 / ms365 | https://microsoft365.mcp.claude.com/mcp | многие плагины |
| gmail | (пусто — настроить) | многие плагины |
| fireflies | https://api.fireflies.ai/mcp | sales, product-management |
| gong | https://mcp.gong.io/mcp | brand-voice |
| granola | https://mcp.granola.ai/mcp | brand-voice |

## Задачи и проекты

| Сервер | URL | Где используется |
|---|---|---|
| atlassian | https://mcp.atlassian.com/v1/mcp | многие плагины |
| linear | https://mcp.linear.app/mcp | product-management, engineering, design, productivity |
| asana | https://mcp.asana.com/v2/mcp | многие плагины |
| monday | https://mcp.monday.com/mcp | product-management, productivity |
| clickup | https://mcp.clickup.com/mcp | product-management, productivity |
| notion | https://mcp.notion.com/mcp | многие плагины |

## Данные и аналитика

| Сервер | URL | Где используется |
|---|---|---|
| bigquery | https://bigquery.googleapis.com/mcp | data, finance |
| snowflake | (пусто — настроить) | data, finance |
| databricks | (пусто — настроить) | data, finance |
| amplitude | https://mcp.amplitude.com/mcp | data, marketing, product-management |
| amplitude-eu | https://mcp.eu.amplitude.com/mcp | data, marketing, product-management |
| hex | https://app.hex.tech/mcp | data |
| definite | https://api.definite.app/v3/mcp/http | data |
| supermetrics | https://mcp.supermetrics.com/mcp | marketing |
| pendo | https://app.pendo.io/mcp/v0/shttp | product-management |

## Дизайн и контент

| Сервер | URL | Где используется |
|---|---|---|
| figma | https://mcp.figma.com/mcp | design, marketing, product-management, brand-voice |
| canva | https://mcp.canva.com/mcp | marketing, small-business |

## Финансы и малый бизнес

| Сервер | URL | Где используется |
|---|---|---|
| quickbooks | https://ai-inc.quickbooks.intuit.com/v1/mcp | small-business |
| stripe | https://mcp.stripe.com | small-business |
| square | https://mcp.squareup.com/sse | small-business |
| paypal | (sse) https://mcp.paypal.com/sse | small-business |
| docusign | https://mcp.docusign.com/mcp | legal, small-business |
| box | https://mcp.box.com | legal, brand-voice |

## Юриспруденция и документы

| Сервер | URL | Где используется |
|---|---|---|
| egnyte | https://mcp-server.egnyte.com/mcp | legal |
| google drive | https://drivemcp.googleapis.com/mcp/v1 | small-business |
| guru | https://mcp.api.getguru.com/mcp | customer-support, enterprise-search |
| intercom | https://mcp.intercom.com/mcp | customer-support, product-management, design |

## Инженерия и операции

| Сервер | URL | Где используется |
|---|---|---|
| github | https://api.githubcopilot.com/mcp/ | engineering |
| pagerduty | https://mcp.pagerduty.com/mcp | engineering |
| datadog | https://mcp.datadoghq.com/api/unstable/mcp-server/mcp | engineering |

## Маркетинг

| Сервер | URL | Где используется |
|---|---|---|
| ahrefs | https://api.ahrefs.com/mcp/mcp | marketing |
| klaviyo | https://mcp.klaviyo.com/mcp | marketing |
| similarweb | https://mcp.similarweb.com | marketing, sales, product-management |

## Научные исследования (bio-research)

| Сервер | URL | Где используется |
|---|---|---|
| pubmed | https://pubmed.mcp.claude.com/mcp | bio-research |
| biorxiv | https://hcls.mcp.claude.com/biorxiv/mcp | bio-research |
| chembl | https://hcls.mcp.claude.com/chembl/mcp | bio-research |
| c-trials | https://hcls.mcp.claude.com/clinical_trials/mcp | bio-research |
| ot | https://mcp.platform.opentargets.org/mcp | bio-research |
| owkin | https://mcp.k.owkin.com/mcp | bio-research |
| consensus | https://mcp.consensus.app/mcp | bio-research |
| synapse | https://mcp.synapse.org/mcp | bio-research |
| wiley | https://connector.scholargateway.ai/mcp | bio-research |
| biorender | https://mcp.services.biorender.com/mcp | bio-research |
| benchling | (пусто — настроить) | bio-research |

## Календарь и почта

| Сервер | URL | Где используется |
|---|---|---|
| google calendar | (пусто — настроить) | многие плагины |
| gmail | (пусто — настроить) | многие плагины |

Примечание: серверы с пустым `url` (gmail, google calendar, snowflake, databricks, benchling) — это заглушки из оригинальных `.mcp.json`; адрес/тип настраивается под окружение пользователя (часто через OAuth или stdio).