unit uDatabase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset;

type

  { TDatabase }

  TDatabase = class
  private
    FConnection: TZConnection;
    FQuery: TZQuery;
  public
    constructor Create;
    class function New: TDatabase;
    property Query: TZQuery read FQuery write FQuery;
  end;

implementation

{ TDatabase }

constructor TDatabase.Create;
begin
  FQuery := TZQuery.Create(nil);
  FConnection := TZConnection.Create(FQuery);
  with FConnection do
  begin
    Protocol := 'oracle';
    User := 'C5TESTE';
    Password := 'consinco';
    Database := 'PDV';
    //Connect := True;
  end;
  FQuery.Connection := FConnection;
end;

class function TDatabase.New: TDatabase;
begin
  Result := Self.Create;
end;

end.

