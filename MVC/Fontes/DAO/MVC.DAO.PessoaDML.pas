unit MVC.DAO.PessoaDML;

interface

uses MVC.DAO.Interfaces.Pessoa;

type
  TDAOPessoaSQL92 = class(TInterfacedObject, iDAOPessoaSQL92,
   iDAOPessoaDML<string>)
  public
    function DML: iDAOPessoaDML<string>;
    function CadatrarPessoa: string; virtual;
  end;

  TDAOPessoaOra = class(TDAOPessoaSQL92)
    class function New: iDAOPessoaSQL92;
  end;

implementation

{ TDAOPessoaSQL92 }

function TDAOPessoaSQL92.CadatrarPessoa: string;
begin
  Result := concat(
  'insert into tb_pessoa ',
    '(seqpessoa, nomerazao, nomefantasia, fisicajuridica, cnpjcpf, ',
    'inscrestadualrg, dtanascimento, sexo, estadocivil, email, senha, ativo) ',
  'values ',
    '(:seqpessoa, :nomerazao, :nomefantasia, :fisicajuridica, :cnpjcpf, ',
    ':inscrestadualrg, :dtanascimento, :sexo, :estadocivil, :email, :senha, ',
    ':ativo)');
end;

function TDAOPessoaSQL92.DML: iDAOPessoaDML<string>;
begin
  Result := Self;
end;

{ TDAOPessoaOra }

class function TDAOPessoaOra.New: iDAOPessoaSQL92;
begin
  Result := Self.Create;
end;

end.
