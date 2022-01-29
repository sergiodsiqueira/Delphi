unit uNFe;

interface

uses SysUtils, DateUtils, Xml.XMLDoc, Xml.XMLIntf, Dialogs, StrUtils;


type
/// <summary>
///   Classe de visualização de dados de retorno da NFe
/// </summary>
/// <param name="ArquivoXML">
///    Tipo String contendo o path completo do arquivo XML de retorno da NFe
/// </param>
/// <code>
///   XML := TNFeRetorno.Create('C:\Arquivo.xml');
///   XML.Status;
/// </code>
/// <returns>
///     <para> Status: contém o status de envio do arquivo </para>
///     <para> Data: atributo do tipo TDate que contém a data de processamento da NFe </para>
///     <para> Hora: atributo do tipo TTime que contém a hora de processamento da NFe </para>
/// </returns>
  TNFeRetorno = class
  private
    FStatus: String;
    FData: TDate;
    FHora: TTime;

    XML: IXMLDocument;

    /// <summary>
    ///   Função de processamento do XML de retorno e carga dos atributos da classe
    /// </summary>
    function ProcessaXML:Boolean;
  public
    {Atributos}
    property Status: String read FStatus write FStatus;
    property Data: TDate read FData write FData;
    property Hora: TTime read FHora write FHora;

    {Metodos}
    constructor Create(const ArquivoXML: String);
  end;

implementation

{ TNFeRetorno }

constructor TNFeRetorno.Create(const ArquivoXML: String);
begin
  XML := TXMLDocument.Create(nil);

  if not FileExists(ArquivoXML) then
    raise Exception.Create('Arquivo não encontrado!');

  XML.LoadFromFile(ArquivoXML);

  if not ProcessaXML then
    raise Exception.Create('Erro ao processar XML!');
end;

function TNFeRetorno.ProcessaXML: Boolean;
var NodeStatus: IXMLNode;
    NodedhProcessamento: IXMLNode;
    S: String;
    I: Integer;
begin
  Result := False;
  //Status
  NodeStatus := XML.ChildNodes.FindNode('eFinanceira').
                    ChildNodes.FindNode('retornoLoteEventos').
                    ChildNodes.FindNode('status');

  Self.Status := NodeStatus.ChildNodes.FindNode('descRetorno').Text;


  //Data e Hora
  NodedhProcessamento := XML.ChildNodes.FindNode('eFinanceira').
                             ChildNodes.FindNode('retornoLoteEventos').
                             ChildNodes.FindNode('retornoEventos').
                             ChildNodes.FindNode('evento').
                             ChildNodes[0].
                             ChildNodes[0].
                             ChildNodes.FindNode('dadosRecepcaoEvento');


  S := NodedhProcessamento.ChildNodes.FindNode('dhProcessamento').Text;
  Self.Data := ISO8601ToDate(Copy(S, 0, 10));
  Self.Hora := StrToTime(Copy(S, 12, 8));

  Result := True;
end;

end.
