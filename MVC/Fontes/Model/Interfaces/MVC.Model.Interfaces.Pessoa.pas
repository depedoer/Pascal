unit MVC.Model.Interfaces.Pessoa;

interface

type
  iModelPessoa = interface
    ['{12B98326-AB81-430A-8C54-E9B5207CEC67}']
    function Nome: string; overload;
    function Nome(AValue: string): iModelPessoa; overload;
    function DtaNasc: TDate; overload;
    function DtaNasc(AValue: TDate): iModelPessoa; overload;
    function Documento: string; overload;
    function Documento(AValue: string): iModelPessoa; overload;
  end;

implementation

end.
