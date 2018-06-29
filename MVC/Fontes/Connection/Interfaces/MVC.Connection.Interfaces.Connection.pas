unit MVC.Connection.Interfaces.Connection;

interface

uses System.Classes, FireDAC.Comp.Client;

type
  iDAOConexaoParametros = interface;
  TDAODatabase = (SQLite, MySQL);
  TEventGetBanco = procedure (AValue: TDAODatabase) of object;

  iDAOConexao = interface
  ['{70FC213E-4F49-4924-817C-75525B578019}']
    function Parametros: iDAOConexaoParametros;
  end;

  iDAOConexaoParametros = interface
  ['{074A08DD-C4B2-4250-A41A-C4DF8734A230}']
    function Connection(AOwner: TComponent): TFDConnection;
    function Port(AValue: string): iDAOConexaoParametros;
    function Server(AValue: string): iDAOConexaoParametros;
    function DataBase(AValue: string): iDAOConexaoParametros;
    function UserName(AValue: string): iDAOConexaoParametros;
    function Password(AValue: string): iDAOConexaoParametros;
    function GetBanco(AValue: TEventGetBanco): iDAOConexaoParametros;
    function Conectar: iDAOConexaoParametros;
  end;

implementation

end.
