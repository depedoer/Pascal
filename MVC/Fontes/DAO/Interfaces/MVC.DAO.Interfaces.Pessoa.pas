unit MVC.DAO.Interfaces.Pessoa;

interface

uses MVC.Model.Interfaces.Pessoa;

type
  iDAOPessoaDML<T> = interface
  ['{9E995056-5752-4A8C-9B89-AD571FA0FE83}']
    function CadatrarPessoa: T;
  end;

  iDAOPessoaSQL92 = interface
  ['{410C0E22-4913-46FC-A25D-085B3D96EA2B}']
    function DML: iDAOPessoaDML<string>;
  end;

  iDAOPessoa = interface
  ['{35B21884-A62A-4892-AC70-7CE6C951E03F}']
    function DML(AValue: iModelPessoa): iDAOPessoaDML<iDAOPessoa>;
  end;


implementation



end.
