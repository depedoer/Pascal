unit uPessoa.Interfaces;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  iPessoa = interface
    ['{5E13E9F2-D9E8-46D7-B603-854042E037AF}']
    function Cadastrar: iPessoa;
    function Alterar: iPessoa;
    function Excluir: iPessoa;
    function StatusRetorno: Boolean;
  end;

implementation

end.

