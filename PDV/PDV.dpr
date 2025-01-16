program PDV;

uses
  System.StartUpCopy,
  FMX.Forms,
  PDV.View.Principal in 'View\PDV.View.Principal.pas' {FrmPrincipal},
  PDV.Model.Caixa.Interfaces in 'Model\Caixa\PDV.Model.Caixa.Interfaces.pas',
  PDV.Model.Caixa in 'Model\Caixa\PDV.Model.Caixa.pas',
  PDV.Model.Interfaces in 'Model\PDV.Model.Interfaces.pas',
  PDV.Model in 'Model\PDV.Model.pas',
  PDV.Model.Usuario.Interfaces in 'Model\Usuario\PDV.Model.Usuario.Interfaces.pas',
  PDV.Model.Usuario.Tipos.Interfaces in 'Model\Usuario\Tipos\PDV.Model.Usuario.Tipos.Interfaces.pas',
  PDV.Model.Usuario.Tipos.Caixa in 'Model\Usuario\Tipos\PDV.Model.Usuario.Tipos.Caixa.pas',
  PDV.Controller.Dialog.Interfaces in 'Controller\Dialog\PDV.Controller.Dialog.Interfaces.pas',
  PDV.View.Dialog.PedirSenha in 'View\Dialog\PDV.View.Dialog.PedirSenha.pas' {FrmPedirSenha},
  PDV.Controller.Dialog.PedirSnha.Interfaces in 'Controller\Dialog\PedirSenha\PDV.Controller.Dialog.PedirSnha.Interfaces.pas',
  PDV.Controller.Dialog.PedirSnha in 'Controller\Dialog\PedirSenha\PDV.Controller.Dialog.PedirSnha.pas',
  PDV.Controller.Forms in 'Controller\Forms\PDV.Controller.Forms.pas',
  PDV.Model.Usuario.Metodos.Interfaces in 'Model\Usuario\Metodos\PDV.Model.Usuario.Metodos.Interfaces.pas',
  PDV.Model.Caixa.State.Interfaces in 'Model\Caixa\State\PDV.Model.Caixa.State.Interfaces.pas',
  PDV.Model.Caixa.State.Aberto in 'Model\Caixa\State\PDV.Model.Caixa.State.Aberto.pas',
  PDV.Model.Caixa.Metodos.Intefaces in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Intefaces.pas',
  PDV.Model.Caixa.Metodos.Factory in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Factory.pas',
  PDV.Model.Caixa.Metodos.Abertura in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Abertura.pas',
  PDV.Model.Caixa.Metodos.Login in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Login.pas',
  PDV.Model.Caixa.State.Fechado in 'Model\Caixa\State\PDV.Model.Caixa.State.Fechado.pas',
  PDV.Model.Caixa.State.Blqueado in 'Model\Caixa\State\PDV.Model.Caixa.State.Blqueado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPedirSenha, FrmPedirSenha);
  Application.Run;
end.
