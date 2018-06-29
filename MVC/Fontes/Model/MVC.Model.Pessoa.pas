unit MVC.Model.Pessoa;

interface

uses MVC.Model.Interfaces.Pessoa;

type
  TModelPessoa = class(TInterfacedObject, iModelPessoa)
  private
    FCodigo: Integer;
    FNome: string;
    FFisicaJuridica: string;
    FCpfCnpj: string;
    FInscrestadualrg: string;
    FDtaNasc: TDate;
    FSexo: string;
    FEstadocivil: String;
    FEmail: string;
    FSenha: string;
    FAtivo: string;
    FDocumento: string;
  public
    constructor Create;
    destructor Destroy;
    class function New: iModelPessoa;
    function Salvar: iModelPessoa;
    function Codigo: Integer; overload;
    function Codigo(AValue: Integer): iModelPessoa; overload;
    function Nome: string; overload;
    function Nome(AValue: string): iModelPessoa; overload;
    function DtaNasc: TDate; overload;
    function DtaNasc(AValue: TDate): iModelPessoa; overload;
    function Documento: string; overload;
    function Documento(AValue: string): iModelPessoa; overload;
    function FisicaJuridica: string; overload;
    function FisicaJuridica(AValue: string): iModelPessoa; overload;
    function Inscrestadualrg: string; overload;
    function Inscrestadualrg(AValue: string): iModelPessoa; overload;
    function Sexo: string; overload;
    function Sexo(AValue: string): iModelPessoa; overload;
    function Estadocivil: String; overload;
    function Estadocivil(AValue: String): iModelPessoa; overload;
    function Email: string; overload;
    function Email(AValue: string): iModelPessoa; overload;
    function Senha: string; overload;
    function Senha(AValue: string): iModelPessoa; overload;
    function Ativo: string; overload;
    function Ativo(AValue: string): iModelPessoa; overload;
  end;

implementation

{ TModelPessoa }

function TModelPessoa.Ativo(AValue: string): iModelPessoa;
begin
  Result := Self;
  FAtivo := AValue;
end;

function TModelPessoa.Ativo: string;
begin
  Result := FAtivo;
end;

function TModelPessoa.Codigo(AValue: Integer): iModelPessoa;
begin
  Result := Self;
  FCodigo := AValue;
end;

function TModelPessoa.Codigo: Integer;
begin
  Result := FCodigo;
end;

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

function TModelPessoa.Email(AValue: string): iModelPessoa;
begin
  Result := Self;
  FEmail := AValue;
end;

function TModelPessoa.Email: string;
begin
  Result := FEmail;
end;

function TModelPessoa.Estadocivil: String;
begin
  Result := FEstadocivil;
end;

function TModelPessoa.Estadocivil(AValue: String): iModelPessoa;
begin
  Result := Self;
  FEstadocivil := AValue;
end;

function TModelPessoa.FisicaJuridica(AValue: string): iModelPessoa;
begin
  Result := Self;
  FFisicaJuridica := AValue;
end;

function TModelPessoa.FisicaJuridica: string;
begin
  Result := FFisicaJuridica;
end;

function TModelPessoa.Inscrestadualrg: string;
begin
  Result := FInscrestadualrg;
end;

function TModelPessoa.Inscrestadualrg(AValue: string): iModelPessoa;
begin
  Result := Self;
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
  Result := Self;
end;

function TModelPessoa.Senha: string;
begin
  Result := FSenha;
end;

function TModelPessoa.Senha(AValue: string): iModelPessoa;
begin
  Result := Self;
  FSenha := AValue;
end;

function TModelPessoa.Sexo: string;
begin
  Result := FSexo;
end;

function TModelPessoa.Sexo(AValue: string): iModelPessoa;
begin
  Result := Self;
  FSexo := AValue;
end;

end.
