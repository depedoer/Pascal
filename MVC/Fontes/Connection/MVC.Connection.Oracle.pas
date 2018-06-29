unit MVC.Connection.Oracle;

interface

uses System.SysUtils, System.Classes, FireDAC.Comp.Client,
  MVC.Connection.Interfaces.Connection;

type
  TConexaoOracle = class(TInterfacedObject, iConexaoParametros)
  private
    FConexao: TFDConnection;
    FBanco: TDatabase;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iConexaoParametros;
    function Parametros: iConexaoParametros;
    function Connection(AOwner: TComponent): TFDConnection;
    function Port(AValue: string): iConexaoParametros;
    function Server(AValue: string): iConexaoParametros;
    function DataBase(AValue: string): iConexaoParametros;
    function DriverID(AValue: string): iConexaoParametros;
    function UserName(AValue: string): iConexaoParametros;
    function Password(AValue: string): iConexaoParametros;
    function GetBanco(AValue: TEventGetBanco): iConexaoParametros;
    function Conectar: iConexaoParametros;
  end;

implementation

{ TDAOConexaoMySQL }

function TConexaoOracle.Conectar: iConexaoParametros;
begin

end;

function TConexaoOracle.Connection(AOwner: TComponent): TFDConnection;
begin
//  Result := FConexao;
end;

constructor TConexaoOracle.Create;
begin
  FBanco := TDatabase.Oracle;
  FConexao := TFDConnection.Create(nil);
end;

function TConexaoOracle.DataBase(AValue: string): iConexaoParametros;
begin
  Result := Self;
  FConexao.Params.Database := AValue;
end;

destructor TConexaoOracle.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

function TConexaoOracle.DriverID(AValue: string): iConexaoParametros;
begin
  Result := Self;
  FConexao.Params.DriverID := AValue;
end;

function TConexaoOracle.GetBanco(AValue: TEventGetBanco): iConexaoParametros;
begin
  Result := Self;
  AValue(FBanco);
end;

class function TConexaoOracle.New: iConexaoParametros;
begin
  Result := Self.Create;
end;

function TConexaoOracle.Parametros: iConexaoParametros;
begin
  Result := Self;
end;

function TConexaoOracle.Password(AValue: string): iConexaoParametros;
begin
  Result := Self;
  FConexao.Params.Password := AValue;
end;

function TConexaoOracle.Port(AValue: string): iConexaoParametros;
begin
  Result := Self;
  FConexao.Params.Add('port=' + AValue);
end;

function TConexaoOracle.Server(AValue: string): iConexaoParametros;
begin
  Result := Self;
  FConexao.Params.Add('server=' + AValue);
end;

function TConexaoOracle.UserName(AValue: string): iConexaoParametros;
begin
  Result := Self;
  FConexao.Params.UserName := AValue;
end;

end.
