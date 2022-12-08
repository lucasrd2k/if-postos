# if-postos


Versão final do cadastro/edição e login

Próximos passos:

1. Implementar banco/php do cadastro/edição e login (OK)
2. Implementar recuperação de senha via email (OK)
3. Implementar visual da página principal do adm (OK)
4. Implementar visual da página principal do cliente (OK)
5. Implementar banco das páginas principais (OK)
6. Implementar php das páginas principais...
   1. Tela meio com tabela (OK)
   2. Pedido de mudança no preço (OK)
   3. Tela de autorização de mudança (OK)

Instruções:

1. Criar o banco rodando o arquivo sql.sql
2. Colocar os arquivos na raiz e acessar
3. Salvar as imagens das bandeiras de acordo com o id no banco "id.png"

Obs.: Caso seu usuário não seja root com senha vazia, alterar no conexao.php
Obs2.: Caso esteja hospedando na máquina, o email não será enviado.

Caso vá usar na máquina e queira testar a recuperação de senha use

$testeXampp = true;

No arquivo confirmação.php

Caso hospede, colocar $testeXampp = false; (o e-mail será enviado e o código/senha não aparecem)