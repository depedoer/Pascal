unit MVC.Controller.Pessoa;

interface

uses
  MVC.Controller.Interfaces.Pessoa,
  MVC.Model.Pessoa,
  MVC.Model.Interfaces.Pessoa;

type
  TControllerPessoa = class(TInterfacedObject, iControllerPessoa)
  private
    FModelPessoa: iModelPessoa;
  public
    constructor Create;
    class function New: iControllerPessoa;
    function Retorno: TrecRetPessoa;
    function Salvar(AValue: TrecPessoa): iControllerPessoa;
  end;

implementation

{ TControllerPessoa }

constructor TControllerPessoa.Create;
begin
  FModelPessoa := TModelPessoa.New;
end;

class function TControllerPessoa.New: iControllerPessoa;
begin
  Result := Self.Create;
end;

function TControllerPessoa.Retorno: TrecRetPessoa;
begin

end;

function TControllerPessoa.Salvar(AValue: TrecPessoa): iControllerPessoa;
begin
  FModelPessoa
    .Nome(AValue.Nome)
    .DtaNasc(AValue.DtaNasc)
    .Documento(AValue.Documento);
end;

end.
