program POC.AES128.ECB;

uses
  Vcl.Forms,
  AES128ECB in 'AES128ECB.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
