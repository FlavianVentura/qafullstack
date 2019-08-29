require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'


RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Capybara::DSL

  config.before(:example) do
    page.current_window.resize_to(1300, 1350)
  end

  config.after(:example) do |e|
    # Regex para substituir letras maiusculas, acentos, espaços e caracteres por 
    # underline nos espaços em branco
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    # método para tirar screenshots dos scripts de testes
    # Os prints podem ser retirados apenas de cenários que falhem
    # Com o if e.exception sendo descomentado, assim, 
    # sempre que um cenário falhar,teremos os prints
    page.save_screenshot('log/' + nome + '.png') # if e.exception
  end

end

Capybara.configure do |config|
  # O Headless executa os scipts de automação com browser em modo "Fantasma" 
  config.default_driver = :selenium_chrome # _headless 
  config.default_max_wait_time = 10
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'
end