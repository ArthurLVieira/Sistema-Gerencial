unit PDV.Controller.Dialog.Interfaces;

interface

uses
  PDV.Controller.Dialog.PedirSnha.Interfaces,
  PDV.Controller.Dialog.LoginCaixa.Interfaces;

type

  iControllerDialogFactory = interface
    ['{5DC621A9-C821-47AB-ABCA-180F4C02A785}']
    function PedirSenha: iControllerDialogPedirSenha;
    function LoginCaixa: iControllerDialogLoginCaixa;
  end;

implementation

end.
