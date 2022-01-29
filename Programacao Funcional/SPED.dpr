program SPED;

uses
  Vcl.Forms,
  SPED.View.Principal in 'Views\SPED.View.Principal.pas' {Form3},
  SPED.Model.BlocoK in 'Models\SPED.Model.BlocoK.pas',
  SPED.Model.BlocoJ in 'Models\SPED.Model.BlocoJ.pas',
  SPED.Model.SPED in 'Models\SPED.Model.SPED.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
