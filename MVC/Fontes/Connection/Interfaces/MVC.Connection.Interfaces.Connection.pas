unit MVC.Connection.Interfaces.Connection;

interface

uses System.Classes, FireDAC.Comp.Client;

type
  iConexaoParametros = interface;
  TDatabase = (Oracle, MySQL);
  TEventGetBanco = procedure (AValue: TDatabase) of object;

  iDAOConexao = interface
  ['{70FC213E-4F49-4924-817C-75525B578019}']
    function Parametros: iConexaoParametros;
  end;

  iConexaoParametros = interface
  ['{074A08DD-C4B2-4250-A41A-C4DF8734A230}']
    function Connection(AOwner: TComponent): TFDConnection;
    function Port(AValue: string): iConexaoParametros;
    function Server(AValue: string): iConexaoParametros;
    function DataBase(AValue: string): iConexaoParametros;
    function UserName(AValue: string): iConexaoParametros;
    function Password(AValue: string): iConexaoParametros;
    function GetBanco(AValue: TEventGetBanco): iConexaoParametros;
    function Conectar: iConexaoParametros;
  end;

implementation

end.
