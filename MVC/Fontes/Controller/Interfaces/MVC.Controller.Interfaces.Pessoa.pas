unit MVC.Controller.Interfaces.Pessoa;

interface

type
  TrecPessoa = record
    Nome: string;
    DtaNasc: TDate;
    Documento: string;
  end;

  TrecRetPessoa = record
    Retorno: Integer;
    Status: Boolean;
    Msg: string;
  end;

  iControllerPessoa = interface
    function Salvar(AValue: TrecPessoa): iControllerPessoa;
    function Retorno: TrecRetPessoa;
  end;

implementation

end.
