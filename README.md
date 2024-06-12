# PROJETO ETEC [Crud de gerenciamento de enfermeiros]

Para a realização deste projeto, foram utilizados as seguintes tecnologias separas por arquivos de pasta:

* Frontend
  * HTML
  * CSS
  * Javascript
  * Jquery

* Backend  
  * Php

* Banco de dados  
  * MySql

Como se vê, o projeto está separado em pastas que contemplam o código e toda a estrutura de negócios. 
As principais são ``enfe`` responsável pelo gerenciamento dos enfeirmeiros e ``criadores`` responsável pelo gerenciamento dos criadores do projeto. A pasta ``customer`` trata da ``API``


## Instalação
* 1 - Baixe o projeto diretamente do git usando o comando git clone https://github.com/giovanna911/etec.git
* 2 - Sempre que quiser verificar as atuaizações, execute o comando git status
* 3 - Para adicionar novos arquvos no git, use o comando git add --all
* 4 - Para subir os arquivos no git, vc precisar "comitar". Comitar significa dize o que foi feito nessa versão que irá subir git commit -m "instrução"
* 5 - Para fazer um push, ou seja, inserir o que foi comitado no repositório, use o comando git push origin main 
* 6 - Para pegar as atualizações use o comando git pull origin main

### IMPORTANTE
Não esqueça de importar o banco de dados no ``admin do MySql``. O arquivo em questão é o ``wda_crud.sql``

## Rodando o projeto [Let's Rock & Roll]

Abra o ``Xampp`` e rode os comandos ``MySQL`` e o ``Apache``. Após isso, acesse a URL ```http://localhost/etec/``

Para um bom funcionamento do projeto, o ideal é rodar primeiro o diretório ``Backend`` para depois rodar o diretório ``Frontend``.
