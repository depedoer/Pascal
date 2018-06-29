unit MVC.Connection;

interface

uses System.Classes, FireDAC.Comp.Client,
  MVC.Connection.Interfaces.Connection;

type
  TConnection = class(TInterfacedObject, iDAOConexao, iDAOConexaoParametros)
  private
    FBanco: iDAOConexaoParametros;
  public
    constructor Create(AValue: iDAOConexaoParametros);
    destructor Destroy; override;
    class function New(AValue: iDAOConexaoParametros): iDAOConexao; overload;
    function Parametros: iDAOConexaoParametros;
    function Connection(AOwner: TComponent): TFDConnection;
    function Port(AValue: string): iDAOConexaoParametros;
    function Server(AValue: string): iDAOConexaoParametros;
    function DataBase(AValue: string): iDAOConexaoParametros;
    function UserName(AValue: string): iDAOConexaoParametros;
    function Password(AValue: string): iDAOConexaoParametros;
    function SetBanco(AValue: iDAOConexaoParametros): iDAOConexao;
    function GetBanco(AValue: TEventGetBanco): iDAOConexaoParametros;
    function Conectar: iDAOConexaoParametros;
  end;

var
  FConnection: iDAOConexao;

implementation

{ TDAOConexao }

function TConnection.Conectar: iDAOConexaoParametros;
begin
  FBanco.Conectar;
  Result := Self;
end;

function TConnection.Connection(AOwner: TComponent): TFDConnection;
begin
  Result := FBanco.Connection(AOwner);
end;

constructor TConnection.Create(AValue: iDAOConexaoParametros);
begin
  FBanco := AValue;
end;

function TConnection.DataBase(AValue: string): iDAOConexaoParametros;
begin
  FBanco.DataBase(AValue);
  Result := Self;
end;

destructor TConnection.Destroy;
begin

  inherited;
end;

function TConnection.GetBanco(AValue: TEventGetBanco): iDAOConexaoParametros;
begin
  FBanco.GetBanco(AValue);
  Result := Self;
end;

class function TConnection.New(AValue: iDAOConexaoParametros): iDAOConexao;
begin
  if not Assigned(FConnection) then
    FConnection := Self.Create(AValue);
  Result := FConnection;
end;

function TConnection.Parametros: iDAOConexaoParametros;
begin
  Result := Self;
end;

function TConnection.Password(AValue: string): iDAOConexaoParametros;
begin
  FBanco.Password(AValue);
  Result := Self;
end;

function TConnection.Port(AValue: string): iDAOConexaoParametros;
begin
  FBanco.Port(AValue);
  Result := Self;
end;

function TConnection.Server(AValue: string): iDAOConexaoParametros;
begin
  FBanco.Server(AValue);
  Result := Self;
end;

function TConnection.SetBanco(AValue: iDAOConexaoParametros): iDAOConexao;
begin
  Result := Self;
  FBanco := AValue;
end;

function TConnection.UserName(AValue: string): iDAOConexaoParametros;
begin
  FBanco.UserName(AValue);
  Result := Self;
end;

initialization

finalization
  FConnection := nil;

end.
