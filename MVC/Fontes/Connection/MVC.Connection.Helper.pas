unit MVC.Connection.Helper;

interface

uses MVC.Connection.Interfaces.Connection, MVC.Connection;

type
  TDAOHelperBanco = record Helper for TDatabase
    function New: iDAOConexao;
  end;

implementation

{ TDAOHelperBanco }

uses MVC.Connection.Oracle;

function TDAOHelperBanco.New: iDAOConexao;
begin
  case Self of
    Oracle:
      Result := TConnection.New(TConexaoOracle.New);
  end;
end;

end.
