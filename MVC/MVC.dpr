program MVC;

uses
  System.StartUpCopy,
  FMX.Forms,
  MVC.View.Principal in 'Fontes\View\MVC.View.Principal.pas' {Form1},
  MVC.Model.Pessoa in 'Fontes\Model\MVC.Model.Pessoa.pas',
  MVC.Model.Interfaces.Pessoa in 'Fontes\Model\Interfaces\MVC.Model.Interfaces.Pessoa.pas',
  MVC.Controller.Pessoa in 'Fontes\Controller\MVC.Controller.Pessoa.pas',
  MVC.Controller.Interfaces.Pessoa in 'Fontes\Controller\Interfaces\MVC.Controller.Interfaces.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
