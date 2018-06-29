unit MVC.Model.Interfaces.Pessoa;

interface

type
  iModelPessoa = interface
    ['{12B98326-AB81-430A-8C54-E9B5207CEC67}']
    function Salvar: iModelPessoa;
    function Codigo: Integer; overload;
    function Codigo(AValue: Integer): iModelPessoa; overload;
    function Nome: string; overload;
    function Nome(AValue: string): iModelPessoa; overload;
    function DtaNasc: TDate; overload;
    function DtaNasc(AValue: TDate): iModelPessoa; overload;
    function Documento: string; overload;
    function Documento(AValue: string): iModelPessoa; overload;
    function FisicaJuridica: string; overload;
    function FisicaJuridica(AValue: string): iModelPessoa; overload;
    function Inscrestadualrg: string; overload;
    function Inscrestadualrg(AValue: string): iModelPessoa; overload;
    function Sexo: string; overload;
    function Sexo(AValue: string): iModelPessoa; overload;
    function Estadocivil: String; overload;
    function Estadocivil(AValue: String): iModelPessoa; overload;
    function Email: string; overload;
    function Email(AValue: string): iModelPessoa; overload;
    function Senha: string; overload;
    function Senha(AValue: string): iModelPessoa; overload;
    function Ativo: string; overload;
    function Ativo(AValue: string): iModelPessoa; overload;
  end;

implementation

end.
