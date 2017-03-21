# EnviarSMS
Programa para enviar SMS através de um Celular conectado ao computador por Serial/USB.

  ATENÇÃO: Para compilar este programa você precisa instalar a library ComPort,
  encontrada em https://sourceforge.net/projects/comport/

  Este é um exemplo de como enviar SMS através de um Celular conectado ao computador
  por uma porta Serial.

  A maioria dos Celulares atualmente, ao ser conecato ao computador pela USB, pode
  funcionar como um Modem, o que nos permite até mesmo conectar a Internet através dele.

  Se o Celular pode ser reconhecido pelo computador como um Modem, então podemos
  acessá-lo e controlar suas funções através de comandos AT.

  E é exatamente isso que este exemplo faz :)

  Para que o mesmo funcione certifique-se de:

  1. Instalar o driver do seu celular no computador, conectar o dispositivo e
     verificar se o mesmo foi reconhecido como Modem no Gerenciador de Dispositivos do Windows.
  2. Pelo Gerenciador de Dispositivos, verifique a que porta COM o celular foi vinculado
  3. Compile este exemplo sem esquecer de intalar o componente ComPort.
  4. A seguir, rode o programa, especifique a porta, configure a velocidade (115200 para USB)
     digite o telefone e a mensagem e clique em Enviar.
  5. Se tudo der certo a mensagem será enviada :)

  Dúvidas e sugestões: contato@is5.com.br

  Att,

  Ivan S. Vargas
  http://www.is5.com.br
