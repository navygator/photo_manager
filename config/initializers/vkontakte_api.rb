VkontakteApi.configure do |config|
  # параметры, необходимые для авторизации средствами vkontakte_api
  # (не нужны при использовании сторонней авторизации)
  config.app_id       = '3502404'
  config.app_secret   = 'PAfFEfP8TStbtltr2pjr'
  config.redirect_uri = 'http://localhost:3000/from_auth'

  # faraday-адаптер для сетевых запросов
  config.adapter = :net_http
  # HTTP-метод для вызова методов API (:get или :post)
  config.http_verb = :post
  # параметры для faraday-соединения
  # config.faraday_options = {
  #   ssl: {
  #     ca_path:  '/usr/lib/ssl/certs'
  #   },
  #   proxy: {
  #     uri:      'http://proxy.example.com',
  #     user:     'foo',
  #     password: 'bar'
  #   }
  # }

  # логгер
  config.logger        = Rails.logger
  config.log_requests  = true  # URL-ы запросов
  config.log_errors    = true  # ошибки
  config.log_responses = false # удачные ответы
end