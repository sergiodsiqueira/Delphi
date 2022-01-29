unit SPED.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SPED.Model.SPED;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    btnBlocoK: TButton;
    btnBlocoJ: TButton;
    btnLimpar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnBlocoKClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnBlocoJClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    FSPED: ISPED;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

const CodigoEmpresa = 151;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  if not Assigned(FSPED) then
    FSPED := TSPED.New(CodigoEmpresa);

  FSPED.LimparSped;

  Memo1.Clear;
  Memo1.Lines.AddStrings(FSPED
                          .GerarCabecalho
                          .GerarBlocoK
                          .GerarBlocoJ
                          .SPED);
end;

procedure TForm3.btnBlocoKClick(Sender: TObject);
begin
  if not Assigned(FSPED) then
    FSPED := TSPED.New(CodigoEmpresa);

  FSPED.GerarBlocoK;

  Memo1.Clear;
  Memo1.Lines.AddStrings(FSPED.SPED);
end;

procedure TForm3.btnLimparClick(Sender: TObject);
begin
  if not Assigned(FSPED) then
    FSPED := TSPED.New(CodigoEmpresa);

  FSPED.LimparSped;
  Memo1.Clear;
end;

procedure TForm3.btnBlocoJClick(Sender: TObject);
begin
  if not Assigned(FSPED) then
    FSPED := TSPED.New(CodigoEmpresa);

  FSPED.GerarBlocoJ;

  Memo1.Clear;
  Memo1.Lines.AddStrings(FSPED.SPED);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  ReportMemoryLeaksOnShutdown := True;
end;

end.
