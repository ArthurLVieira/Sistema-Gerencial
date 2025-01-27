unit PDV.Controller.Usuario.Operacoes.Interfaces;

interface

uses
  PDV.Controller.Dialog.PedirSnha.Interfaces;

type

  iControllerUsuarioOperacoes = interface
    ['{7E0C98EE-262E-441A-B48B-FA389C5BE220}']
    function PedirSenha: iControllerDialogPedirSenha;
  end;

implementation

end.
