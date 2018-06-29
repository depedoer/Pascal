unit MVC.Connection;

interface

uses System.Classes, FireDAC.Comp.Client,
  MVC.Connection.Interfaces.Connection;

type
  TConnection = class(TInterfacedObject, iDAOConexao, iConexaoParametros)
  private
    FBanco: iConexaoParametros;
  public
    constructor Create(AValue: iConexaoParametros);
    destructor Destroy; override;
    class function New(AValue: iConexaoParametros): iDAOConexao; overload;
    function Parametros: iConexaoParametros;
    function Connection(AOwner: TComponent): TFDConnection;
    function Port(AValue: string): iConexaoParametros;
    function Server(AValue: string): iConexaoParametros;
    function DataBase(AValue: string): iConexaoParametros;
    function UserName(AValue: string): iConexaoParametros;
    function Password(AValue: string): iConexaoParametros;
    function SetBanco(AValue: iConexaoParametros): iDAOConexao;
    function GetBanco(AValue: TEventGetBanco): iConexaoParametros;
    function Conectar: iConexaoParametros;
  end;

var
  FConnection: iDAOConexao;

implementation

{ TDAOConexao }

function TConnection.Conectar: iConexaoParametros;
begin
  FBanco.Conectar;
  Result := Self;
end;

function TConnection.Connection(AOwner: TComponent): TFDConnection;
begin
  Result := FBanco.Connection(AOwner);
end;

constructor TConnection.Create(AValue: iConexaoParametros);
begin
  FBanco := AValue;
end;

function TConnection.DataBase(AValue: string): iConexaoParametros;
begin
  FBanco.DataBase(AValue);
  Result := Self;
end;

destructor TConnection.Destroy;
begin

  inherited;
end;

function TConnection.GetBanco(AValue: TEventGetBanco): iConexaoParametros;
begin
  FBanco.GetBanco(AValue);
  Result := Self;
end;

class function TConnection.New(AValue: iConexaoParametros): iDAOConexao;
begin
  if not Assigned(FConnection) then
    FConnection := Self.Create(AValue);
  Result := FConnection;
end;

function TConnection.Parametros: iConexaoParametros;
begin
  Result := Self;
end;

function TConnection.Password(AValue: string): iConexaoParametros;
begin
  FBanco.Password(AValue);
  Result := Self;
end;

function TConnection.Port(AValue: string): iConexaoParametros;
begin
  FBanco.Port(AValue);
  Result := Self;
end;

function TConnection.Server(AValue: string): iConexaoParametros;
begin
  FBanco.Server(AValue);
  Result := Self;
end;

function TConnection.SetBanco(AValue: iConexaoParametros): iDAOConexao;
begin
  Result := Self;
  FBanco := AValue;
end;

function TConnection.UserName(AValue: string): iConexaoParametros;
begin
  FBanco.UserName(AValue);
  Result := Self;
end;

initialization

finalization
  FConnection := nil;

end.
