unit uPessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, uTelefone;

type
  TATelefone = array of TTelefone;

  TPessoa = class
  private
    FNome: string;
    FTelefone: TATelefone;
  protected
    FDocumento: string;
  public
    property Nome: string read FNome write FNome;
    property Telefone: TATelefone read FTelefone write FTelefone;
  end;

implementation

end.
