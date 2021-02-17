Application.stop(:opentelemetry)
Application.load(:opentelemetry)

Application.put_env(:opentelemetry, :processors, [
  {:otel_batch_processor, %{scheduled_delay_ms: 1}}
])

Application.load(:opentelemetry_exporter)
Application.ensure_all_started(:opentelemetry)

ExUnit.start()
