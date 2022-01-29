unit SPED.Model.SPED;

interface

uses
  SysUtils,
  Classes,
  Dialogs,
  SPED.Model.BlocoK, SPED.Model.BlocoJ;

type
  ISPED = interface
    function GetSPED: TObject;
    function SPED: TStringList;
    function GerarCabecalho: ISPED;
    procedure LimparSped;
    function RemoverBloco(pBloco: String):Boolean;

    function GerarBlocoK: ISPED;
    function GerarBlocoJ: ISPED;
  end;

  TSPED = class(TInterfacedObject, ISPED)
  private
    FHeader: Boolean;
    FSPED: TStringList;
    FEmpresa: Integer;
    FBlocoK: IBlocoK;
    FBlocoJ: IBlocoJ;

    function GetSPED: TObject;
    function SPED: TStringList;
    function GerarCabecalho: ISPED;
    function RemoverBloco(pBloco: String):Boolean;
    procedure LimparSped;
    function GerarBlocoK: ISPED;
    function GerarBlocoJ: ISPED;
  public
    class function New(pCodigoEmpresa: Integer):ISPED;

    constructor Create(pCodigoEmpresa: Integer);
    destructor Destroy; override;
  end;

implementation

{ TSPED }

constructor TSPED.Create(pCodigoEmpresa: Integer);
begin
  FSPED := TStringList.Create;
  FEmpresa := pCodigoEmpresa;

  GerarCabecalho();
end;

destructor TSPED.Destroy;
begin
  FSPED.DisposeOf;

  inherited;
end;

function TSPED.GerarBlocoJ: ISPED;
begin
  if not FHeader then
    GerarCabecalho();

  FBlocoJ := TBlocoJ.New;
  FBlocoJ.GerarBlocoJ(FEmpresa);
  SPED.AddStrings(FBlocoJ.BlocoJ);

  Result := Self;
end;

function TSPED.GerarBlocoK: ISPED;
begin
  if not FHeader then
    GerarCabecalho();

  FBlocoK := TBlocoK.New;
  FBlocoK.GerarBlocoK(FEmpresa);
  SPED.AddStrings(FBlocoK.BlocoK);

  Result := Self;
end;

function TSPED.GerarCabecalho: ISPED;
begin
  if not Assigned(FSPED) then
    raise Exception.Create('Erro ao carregar SPED: cabe�alho');

  FSPED.Add('CPNJ | RAZAOSOCIAL');
  FSPED.Add('00.'+FEmpresa.ToString +'.000/0001-00 | EMPRESA TESTE LDTA. ME.');

  FHeader := True;
  Result := Self;
end;

function TSPED.GetSPED: TObject;
begin
  Result := Self;
end;

procedure TSPED.LimparSped;
begin
  FSPED.Clear;
  FHeader := False;
end;

class function TSPED.New(pCodigoEmpresa: Integer): ISPED;
begin
  Result := Self.Create(pCodigoEmpresa);
end;

function TSPED.RemoverBloco(pBloco: String): Boolean;
var I: Integer;
    CabecalhoApagado: Boolean;
begin
  CabecalhoApagado := False;
  for I := 0 to Pred(FSPED.Count) do
  begin
    if not CabecalhoApagado then
    begin
      if FSPED[I].Contains(pBloco) then
      begin
        FSPED.Delete(I-1);
        CabecalhoApagado := True;
      end;
    end;
  end;

  for I := 0 to Pred(FSPED.Count) do
  begin
    if FSPED[I].Contains(pBloco) then
      FSPED.Delete(I);
  end;
end;

function TSPED.SPED: TStringList;
begin
  Result := FSPED;
end;

end.
