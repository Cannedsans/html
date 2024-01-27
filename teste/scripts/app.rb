require 'sinatra'
require 'json'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  @meu_valor = "Olá Mundo dos infernos!!!"
  html_content = File.read('C:\Users\joaof\OneDrive\Documentos\html\teste\index.html')
  erb html_content
end

post '/form' do
  # Obtendo o valor do campo de número
  numero = params['numero'].to_i

  # Faça o que desejar com o valor (por exemplo, imprimir no console)
  puts "Número recebido: #{numero}"

  # Resposta JSON simples
  { mensagem: "Número recebido com sucesso: #{numero}" }.to_json
end