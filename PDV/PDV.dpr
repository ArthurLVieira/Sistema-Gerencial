program PDV;

uses
  System.StartUpCopy,
  FMX.Forms,
  PDV.Controller.Dialog.LoginCaixa.Interfaces in 'Controller\Dialog\LoginCaixa\PDV.Controller.Dialog.LoginCaixa.Interfaces.pas',
  PDV.Controller.Dialog.LoginCaixa in 'Controller\Dialog\LoginCaixa\PDV.Controller.Dialog.LoginCaixa.pas',
  PDV.Controller.Dialog.PedirSnha.Interfaces in 'Controller\Dialog\PedirSenha\PDV.Controller.Dialog.PedirSnha.Interfaces.pas',
  PDV.Controller.Dialog.PedirSnha in 'Controller\Dialog\PedirSenha\PDV.Controller.Dialog.PedirSnha.pas',
  PDV.Controller.Dialog.Factory in 'Controller\Dialog\PDV.Controller.Dialog.Factory.pas',
  PDV.Controller.Dialog.Interfaces in 'Controller\Dialog\PDV.Controller.Dialog.Interfaces.pas',
  PDV.Controller.Forms in 'Controller\Forms\PDV.Controller.Forms.pas',
  PDV.Controller.Usuario.Operacoes.Interfaces in 'Controller\Usuario\Operacoes\PDV.Controller.Usuario.Operacoes.Interfaces.pas',
  PDV.Controller.Usuario.Operacoes in 'Controller\Usuario\Operacoes\PDV.Controller.Usuario.Operacoes.pas',
  PDV.Controller.Usuario.Interfaces in 'Controller\Usuario\PDV.Controller.Usuario.Interfaces.pas',
  PDV.Controller.Usuario in 'Controller\Usuario\PDV.Controller.Usuario.pas',
  PDV.Model.Caixa.Factory in 'Model\Caixa\PDV.Model.Caixa.Factory.pas',
  PDV.Model.Caixa.Interfaces in 'Model\Caixa\PDV.Model.Caixa.Interfaces.pas',
  PDV.Model.Caixa in 'Model\Caixa\PDV.Model.Caixa.pas',
  PDV.Model.Caixa.Metodos.Abertura in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Abertura.pas',
  PDV.Model.Caixa.Metodos.Bloquear in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Bloquear.pas',
  PDV.Model.Caixa.Metodos.Desbloquear in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Desbloquear.pas',
  PDV.Model.Caixa.Metodos.Factory in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Factory.pas',
  PDV.Model.Caixa.Metodos.Fechamento in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Fechamento.pas',
  PDV.Model.Caixa.Metodos.Intefaces in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Intefaces.pas',
  PDV.Model.Caixa.Metodos.Sangria in 'Model\Caixa\Metodos\PDV.Model.Caixa.Metodos.Sangria.pas',
  PDV.Model.Caixa.State.Aberto in 'Model\Caixa\State\PDV.Model.Caixa.State.Aberto.pas',
  PDV.Model.Caixa.State.Blqueado in 'Model\Caixa\State\PDV.Model.Caixa.State.Blqueado.pas',
  PDV.Model.Caixa.State.Desblqueado in 'Model\Caixa\State\PDV.Model.Caixa.State.Desblqueado.pas',
  PDV.Model.Caixa.State.Fechado in 'Model\Caixa\State\PDV.Model.Caixa.State.Fechado.pas',
  PDV.Model.Caixa.State.Interfaces in 'Model\Caixa\State\PDV.Model.Caixa.State.Interfaces.pas',
  PDV.Model.PDV.Interfaces in 'Model\PDV\PDV.Model.PDV.Interfaces.pas',
  PDV.Model.PDV in 'Model\PDV\PDV.Model.PDV.pas',
  PDV.Model.PDV.Metodos.Factory in 'Model\PDV\Metodos\PDV.Model.PDV.Metodos.Factory.pas',
  PDV.Model.PDV.Metodos.Interfaces in 'Model\PDV\Metodos\PDV.Model.PDV.Metodos.Interfaces.pas',
  PDV.Model.PDV.Metodos.Login in 'Model\PDV\Metodos\PDV.Model.PDV.Metodos.Login.pas',
  PDV.Model.Usuario.Factory.Interfaces in 'Model\Usuario\PDV.Model.Usuario.Factory.Interfaces.pas',
  PDV.Model.Usuario.Factory in 'Model\Usuario\PDV.Model.Usuario.Factory.pas',
  PDV.Model.Usuario.Interfaces in 'Model\Usuario\PDV.Model.Usuario.Interfaces.pas',
  PDV.Model.Usuario in 'Model\Usuario\PDV.Model.Usuario.pas',
  PDV.Model.Usuario.Funcoes.Interfaces in 'Model\Usuario\Funcoes\PDV.Model.Usuario.Funcoes.Interfaces.pas',
  PDV.Model.Usuario.Funcoes.ListarUsuario in 'Model\Usuario\Funcoes\PDV.Model.Usuario.Funcoes.ListarUsuario.pas',
  PDV.Model.Usuario.Metodos.Interfaces in 'Model\Usuario\Metodos\PDV.Model.Usuario.Metodos.Interfaces.pas',
  PDV.Model.Usuario.Tipos.Caixa in 'Model\Usuario\Tipos\PDV.Model.Usuario.Tipos.Caixa.pas',
  PDV.Model.Usuario.Tipos.Factory in 'Model\Usuario\Tipos\PDV.Model.Usuario.Tipos.Factory.pas',
  PDV.Model.Usuario.Tipos.Fiscal in 'Model\Usuario\Tipos\PDV.Model.Usuario.Tipos.Fiscal.pas',
  PDV.Model.Usuario.Tipos.Gerente in 'Model\Usuario\Tipos\PDV.Model.Usuario.Tipos.Gerente.pas',
  PDV.Model.Usuario.Tipos.Interfaces in 'Model\Usuario\Tipos\PDV.Model.Usuario.Tipos.Interfaces.pas',
  PDV.Model.Usuario.Tipos.Padrao in 'Model\Usuario\Tipos\PDV.Model.Usuario.Tipos.Padrao.pas',
  PDV.Model.Facade in 'Model\PDV.Model.Facade.pas',
  PDV.Model.Interfaces in 'Model\PDV.Model.Interfaces.pas',
  PDV.View.Login in 'View\PDV.View.Login.pas' {FrmLogin},
  PDV.View.Principal in 'View\PDV.View.Principal.pas' {FrmPrincipal},
  PDV.View.Dialog.CapturaValor in 'View\Dialog\PDV.View.Dialog.CapturaValor.pas' {FrmCapturaValor},
  PDV.View.Dialog.CapturaValorAbertura in 'View\Dialog\PDV.View.Dialog.CapturaValorAbertura.pas' {FrmCapturaValorAbertura},
  PDV.View.Dialog.PedirSenha in 'View\Dialog\PDV.View.Dialog.PedirSenha.pas' {FrmPedirSenha},
  PDV.Model.Usuario.Funcoes in 'Model\Usuario\Funcoes\PDV.Model.Usuario.Funcoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmCapturaValor, FrmCapturaValor);
  Application.CreateForm(TFrmCapturaValorAbertura, FrmCapturaValorAbertura);
  Application.CreateForm(TFrmPedirSenha, FrmPedirSenha);
  Application.Run;
end.
