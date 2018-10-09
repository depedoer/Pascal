unit uMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, memds, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ZConnection;

type

  { TForm1 }
  teste = class
    nome: string;
  end;



  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure ApplicationProperties1Activate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FT: specialize TArray<teste>;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ApplicationProperties1Activate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Ts: teste;
begin
  Ts := teste.Create;
  SetLength(FT, 2);
  Ts.nome := 'zanoello';
  ft[1] := Ts;
  specialize
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Ts: teste;
begin
  Ts := teste.Create;
  SetLength(FT, 1);
  Ts.nome := 'victor';
  ft[0] := Ts;
end;

end.

