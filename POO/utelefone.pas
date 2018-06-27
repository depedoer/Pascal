unit uTelefone;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TTipoTelefone = (eFixo, eMovel, eComercial);

  TTelefone = class
  private
    FDDD: integer;
    FNumero: string;
    FTipo: TTipoTelefone;
  public
    property DDD: integer read FDDD write FDDD;
    property Numero: string read FNumero write FNumero;
    property Tipo: TTipoTelefone read FTipo write FTipo;
  end;

implementation

end.

