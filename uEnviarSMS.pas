{
  EnviarSMS - v0.0.1
  ------------------

  ATEN��O: Para compilar este programa voc� precisa instalar a library ComPort,
  encontrada em https://sourceforge.net/projects/comport/

  Este � um exemplo de como enviar SMS atrav�s de um Celular conectado ao computador
  por uma porta Serial.

  A maioria dos Celulares atualmente, ao ser conecato ao computador pela USB, pode
  funcionar como um Modem, o que nos permite at� mesmo conectar a Internet atrav�s dele.

  Se o Celular pode ser reconhecido pelo computador como um Modem, ent�o podemos
  acess�-lo e controlar suas fun��es atrav�s de comandos AT.

  E � exatamente isso que este exemplo faz :)

  Para que o mesmo funcione certifique-se de:

  1. Instalar o driver do seu celular no computador, conectar o dispositivo e
     verificar se o mesmo foi reconhecido como Modem no Gerenciador de Dispositivos do Windows.
  2. Pelo Gerenciador de Dispositivos, verifique a que porta COM o celular foi vinculado
  3. Compile este exemplo sem esquecer de intalar o componente ComPort.
  4. A seguir, rode o programa, especifique a porta, configure a velocidade (115200 para USB)
     digite o telefone e a mensagem e clique em Enviar.
  5. Se tudo der certo a mensagem ser� enviada :)

  D�vidas e sugest�es: contato@is5.com.br

  Att,

  Ivan S. Vargas
  http://www.is5.com.br
}
unit uEnviarSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CPort, SyncObjs, ComCtrls, ExtCtrls;

type
  TfrmEnviarSMS = class(TForm)
    edtCelular: TEdit;
    mmMensagem: TMemo;
    btnEnviar: TButton;
    MyComPort: TComPort;
    mmResposta: TMemo;
    edtPorta: TEdit;
    rdgVelocidade: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    procedure btnEnviarClick(Sender: TObject);
    procedure MyComPortRxChar(Sender: TObject; Count: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnviarSMS: TfrmEnviarSMS;
  Events: TComEvents;
  Answer, Data: string;
  Step: Integer;
  Event: TEvent;

implementation

{$R *.dfm}

function CtrlHandler(CtrlType: LongWord): Boolean;
begin
  Event.SetEvent;
  Result := True;
end;

procedure TfrmEnviarSMS.btnEnviarClick(Sender: TObject);
begin
  try
    if (trim(edtPorta.Text) = '') or (trim(edtCelular.Text) = '') or (trim(mmMensagem.Text) = '') then
      raise Exception.Create('Especifique Celular, Mensagem e Porta Serial.');

    try
      //especifica a porta COM
      MyComPort.Port := edtPorta.Text;

      //configura a velocidade
      case rdgVelocidade.ItemIndex of
        0 : MyComPort.BaudRate := br115200;
        1 : MyComPort.BaudRate := br19200;
      end;

      //envia comandos AT para o celular/modem
      MyComPort.Open;
      MyComPort.WriteStr('AT'#13#10);
      Sleep(1000);
      MyComPort.WriteStr('AT+CMGF=1'#13#10);
      Sleep(1000);
      MyComPort.WriteStr('AT+CMGS="'+Trim(edtCelular.Text)+'"'#13#10);
      Sleep(1000);
      MyComPort.WriteStr(mmMensagem.Text+^Z);
      Sleep(1000);
      MyComPort.WriteStr(#13#10);

    finally
      ShowMessage('Conclu�do!');
    end;
  except
    on E: Exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;

procedure TfrmEnviarSMS.MyComPortRxChar(Sender: TObject; Count: Integer);
var
  Str: String;
begin
  //le a resposta do celular/modem
  MyComPort.ReadStr(Str, Count);
  mmResposta.Text := mmResposta.Text + Str;
  mmResposta.Refresh;
end;

end.
