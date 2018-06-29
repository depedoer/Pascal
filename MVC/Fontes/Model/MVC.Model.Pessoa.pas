unit MVC.Model.Pessoa;

interface

uses MVC.Model.Interfaces.Pessoa;

type
  TModelPessoa = class(TInterfacedObject, iModelPessoa)
  private
    FNome: string;
    FDtaNasc: TDate;
    FDocumento: string;
  public
    constructor Create;
    destructor Destroy;
    class function New: iModelPessoa;
    function Salvar: iModelPessoa;
    function Nome: string; overload;
    function Nome(AValue: string): iModelPessoa; overload;
    function DtaNasc: TDate; overload;
    function DtaNasc(AValue: TDate): iModelPessoa; overload;
    function Documento: string; overload;
    function Documento(AValue: string): iModelPessoa; overload;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoa.Create;
begin

end;

destructor TModelPessoa.Destroy;
begin

end;

function TModelPessoa.Documento(AValue: string): iModelPessoa;
begin
  Result := Self;
  FDocumento := AValue;
end;

function TModelPessoa.Documento: string;
begin
  Result := FDocumento;
end;

function TModelPessoa.DtaNasc(AValue: TDate): iModelPessoa;
begin
  Result := Self;
  FDtaNasc := AValue;
end;

function TModelPessoa.DtaNasc: TDate;
begin
  Result := FDtaNasc;
end;

class function TModelPessoa.New: iModelPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoa.Nome: string;
begin
  Result := FNome;
end;

function TModelPessoa.Nome(AValue: string): iModelPessoa;
begin
  Result := Self;
  FNome := AValue;
end;

function TModelPessoa.Salvar: iModelPessoa;
begin

end;

end.
