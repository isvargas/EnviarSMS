program EnviarSMS;

uses
  Forms,
  uEnviarSMS in 'uEnviarSMS.pas' {frmEnviarSMS};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmEnviarSMS, frmEnviarSMS);
  Application.Run;
end.
