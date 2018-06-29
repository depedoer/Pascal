unit uPessoa.Juridica;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, uPessoa;

type

  { TpessoaJuridica }

  TpessoaJuridica = class(TPessoa)
  private
    procedure SetCNPJ(AValue: String);
  public
    property CNPJ: String read FDocumento write SetCNPJ;
    property InscEstadual: String read FInscEsRG write FInscEsRG;
  end;

implementation

{ TpessoaJuridica }

procedure TpessoaJuridica.SetCNPJ(AValue: String);
begin
  FDocumento := AValue;
end;

end.

