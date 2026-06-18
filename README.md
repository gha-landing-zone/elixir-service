# Elixir Service

A minimal Elixir HTTP service used to exercise the shared composite GitHub Action in this organization. 

## Endpoints

| Method | Path      | Response          |
|--------|-----------|-------------------|
| GET    | `/`       | `Hello, World!`   |
| GET    | `/health` | `ok`              |

## Running locally

```bash
mix deps.get
mix run --no-halt          # listens on :4000 by default
PORT=8080 mix run --no-halt
```

## Tests & linting

```bash
mix test
mix credo --strict
mix format --check-formatted
```
