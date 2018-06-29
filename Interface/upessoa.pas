unit uPessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, uPessoa.Interfaces, uDatabase, ZDataset;

type

  { TPessoa }

  TPessoa = class(TInterfacedObject, iPessoa)
  private
    FNome: string;
    FDtaNascimento: TDate;
    FRetorno: integer;
    FQuery: TZQuery;
    procedure SetRetorno(AValue: integer);
  protected
    FCPFCNPJ: string;
    FSexo: string;
    FRGInscEsta: string;
  public
    constructor Create;
    class function New: iPessoa;
    function Cadastrar: iPessoa;
    function Alterar: iPessoa;
    function Excluir: iPessoa;
    function StatusRetorno: boolean;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetRetorno(AValue: integer);
begin
  FRetorno := Avalue;
end;

constructor TPessoa.Create;
begin
  FQuery := TDatabase.New.Query;
end;

class function TPessoa.New: iPessoa;
begin
  Result := Self.Create;
end;

function TPessoa.Cadastrar: iPessoa;
begin
  Result := Self;
end;

function TPessoa.Alterar: iPessoa;
begin
  Result := Self;
end;

function TPessoa.Excluir: iPessoa;
begin
  Result := Self;
end;

function TPessoa.StatusRetorno: boolean;
begin
  Result := False;
  if FRetorno <> 0 then
    Result := True;
end;

end.

