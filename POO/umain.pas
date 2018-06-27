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
begin
  Pessoa := TPessoaFisica.Create;
  Pessoa.Nome := 'Victor Zanoello';
  //Pessoa.Telefone := ;
  TPessoaFisica(Pessoa).CPF := '45369817848';
end;

end.

