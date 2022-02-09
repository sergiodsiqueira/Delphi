unit AES128ECB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TCrypto = function(Value, Key: String):String;

  TfrmMain = class(TForm)
    edtValor: TEdit;
    edtKey: TEdit;
    edtAES: TEdit;
    btnEncriptar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnEncriptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnEncriptarClick(Sender: TObject);
var
  lDLL: THandle;
  Crypto: TCrypto;
begin
  edtAES.Clear;

  if not FileExists('AltCryptAES.dll') then
    raise Exception.Create('DLL não encontrada');

  try
    lDLL := LoadLibrary('AltCryptAES.dll');
    if lDLL <> 0 then
    begin
      Crypto := GetProcAddress(lDLL, 'Crypto');

      edtAES.Text := Crypto(edtValor.Text, edtKey.Text);
    end;
  except
    raise Exception.Create('Erro ao utilizar a DLL');
  end;
end;

end.
