unit SPED.Model.BlocoJ;

interface

uses
  SysUtils,
  Classes;

type
  IBlocoJ = interface
    function GetBlocoJ: TObject;
    function BlocoJ(Value: TStringList): IBlocoJ; Overload;
    function BlocoJ: TStringList; Overload;
    function GerarBlocoJ(pCodigoEmpresa: Integer):IBlocoJ;
  end;

  TBlocoJ = class(TInterfacedObject, IBlocoJ)
  private
    FBlocoJ: TStringList;

    function GetBlocoJ: TObject;
    function BlocoJ(Value: TStringList): IBlocoJ; Overload;
    function BlocoJ: TStringList; Overload;
    function GerarBlocoJ(pCodigoEmpresa: Integer):IBlocoJ;
  public
    class function New:IBlocoJ;

    destructor Destroy; override;
  end;

implementation

{ TBlocoJ }

class function TBlocoJ.New:IBlocoJ;
begin
  Result := Self.Create;
end;

function TBlocoJ.GerarBlocoJ(pCodigoEmpresa: Integer):IBlocoJ;
var I: Integer;
begin
  //Querys necessarios
  if not Assigned(FBlocoJ) then
    FBlocoJ := TStringList.Create;

  FBlocoJ.Add('CODIGO|CONTACORRENTE|VALOR');
  for I := 0 to 10 do
    FBlocoJ.Add('BLOCOJ: ' + I.ToString +
                '| CNAE ' + I.ToString +
                '| R$ ' + I.ToString + ',00')

end;

function TBlocoJ.GetBlocoJ: TObject;
begin
  Result := Self;
end;

function TBlocoJ.BlocoJ(Value: TStringList): IBlocoJ;
begin
  Result := Self;
  FBlocoJ := Value;
end;

function TBlocoJ.BlocoJ: TStringList;
begin
  Result := FBlocoJ;
end;

destructor TBlocoJ.Destroy;
begin
  FBlocoJ.Destroy;
  inherited;
end;

end.
