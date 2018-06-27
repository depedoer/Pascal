unit uMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, uPessoa,
  uPessoa.Fisica, uTelefone;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private

  public
    Pessoa: TPessoa;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  TAF: TATelefone;
  TF: TTelefone;
  I: Integer;
begin
  Pessoa := TPessoaFisica.Create;
  Pessoa.Nome := 'Victor Zanoello';
  SetLength(TAF, 10);
  for I:= 0 to 9 do
  begin
    TF := TTelefone.create;
    TF.DDD := 16;
    TF.Numero:='3761-8941';
    TAF[I]:= TF;
  end;
    Pessoa.Telefone := TAF;
  TPessoaFisica(Pessoa).CPF := '45361817848';
end;

end.

