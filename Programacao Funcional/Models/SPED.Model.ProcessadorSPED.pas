unit SPED.Model.ProcessadorSPED;

interface

uses
  SysUtils,
  Classes,
  SPED.Model.BlocoK;

type
  ISPED = interface

  TProcessadorSPED = class
  private
    FEmpresa: Integer;
    FSPED: TStringList;
    FBlocoK: IBlocoK;

  public
    constructor Create(pCodigoEmpresa: Integer);
    destructor Destroy; override;

    {Propertys}
    property SPED: TStringList read FSPED write FSPED;
    property BlocoK: IBlocoK read FBlocoK write FBlocoK;
  end;

implementation

{ TProcessadorSPED }

constructor TProcessadorSPED.Create(pCodigoEmpresa: Integer);
  function GerarCabecalho: Boolean;
  begin
    if not Assigned(FSPED) then
      raise Exception.Create('Erro ao carregar SPED: cabe�alho');

    FSPED.Add('CPNJ: 00.'+FEmpresa.ToString);
    FSPED.Add('---------------------------------------------------------------');
  end;
begin
  FSPED := TStringList.Create;
  FEmpresa := pCodigoEmpresa;

  FBlocoK := TBlocoK.New;

  GerarCabecalho();
end;

destructor TProcessadorSPED.Destroy;
begin
  FSPED.DisposeOf;

  inherited;
end;

end.
