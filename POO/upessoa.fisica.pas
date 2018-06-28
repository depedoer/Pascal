unit uPessoa.Fisica;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, uPessoa;

type

  { TPessoaFisica }

  TPessoaFisica = class(TPessoa)
  private
    procedure SetDocumento(AValue: string);
  public
    property CPF: string read FDocumento write SetDocumento;
    property RG: string read FInscEsRG write FInscEsRG;
  end;

implementation


{ TPessoaFisica }

function isCPF(CPF: string): boolean;
var
  dig10, dig11: string;
  s, i, r, peso: integer;
begin
  if ((CPF = '00000000000') or (CPF = '11111111111') or (CPF = '22222222222') or
    (CPF = '33333333333') or (CPF = '44444444444') or (CPF = '55555555555') or
    (CPF = '66666666666') or (CPF = '77777777777') or (CPF = '88888888888') or
    (CPF = '99999999999') or (length(CPF) <> 11)) then
  begin
    isCPF := False;
    exit;
  end;
  try
    { *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
      // StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
      dig10 := '0'
    else
      str(r: 1, dig10); // converte um número no respectivo caractere numérico
    { *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11)) then
      dig11 := '0'
    else
      str(r: 1, dig11);
    { Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11])) then
      isCPF := True
    else
      isCPF := False;
  except
    isCPF := False
  end;
end;


procedure TPessoaFisica.SetDocumento(AValue: string);
begin
  if isCPF(AValue) then
    FDocumento := AValue
  else
    raise Exception.Create('CPF Invalido');
end;


end.
