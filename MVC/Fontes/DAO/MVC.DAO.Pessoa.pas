unit MVC.DAO.Pessoa;

interface

uses System.SysUtils, FireDAC.Comp.Client,
  MVC.DAO.Interfaces.Pessoa,
  MVC.Model.Interfaces.Pessoa;

type
  TDAOPessoa = class(TInterfacedObject, iDAOPessoa, iDAOPessoaDML<iDAOPessoa>)
  private
    FQuery: TFDQuery;
    FModelPessoa: iModelPessoa;
    FDatabaseDML: iDAOPessoaSQL92;
    function ValidateModelPessoa: iModelPessoa;
  public
    constructor Create;
    destructor Destroy;
    class function New: iDAOPessoa;
    function DML(AValue: iModelPessoa): iDAOPessoaDML<iDAOPessoa>;
    function CadatrarPessoa: iDAOPessoa;
  end;

implementation

{ TDAOPessoa }

uses MVC.DAO.PessoaDML;

function TDAOPessoa.CadatrarPessoa: iDAOPessoa;
begin
  Result := Self;
  FQuery.SQL.Text := FDatabaseDML.DML.CadatrarPessoa;

  with FQuery do
  begin

  end;

end;

constructor TDAOPessoa.Create;
begin

end;

destructor TDAOPessoa.Destroy;
begin

end;

function TDAOPessoa.DML(AValue: iModelPessoa): iDAOPessoaDML<iDAOPessoa>;
begin
  Result := Self;
  FModelPessoa := AValue;
end;

class function TDAOPessoa.New: iDAOPessoa;
begin
  Result := Self.Create;
end;

function TDAOPessoa.ValidateModelPessoa: iModelPessoa;
begin
  if not Assigned(FModelPessoa) then
  raise Exception.Create(Concat('', ' ',
     '{8B7E3B11-A3CA-434B-B2B4-1B913F0DB03E}'));

end;

end.
