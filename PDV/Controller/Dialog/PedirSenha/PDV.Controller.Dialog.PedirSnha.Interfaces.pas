unit PDV.Controller.Dialog.PedirSnha.Interfaces;

interface

uses
  System.Classes;

type

  iControllerDialogPedirSenha = interface
    ['{A691DF78-A530-46F5-85A3-5DB8F9B5DA3A}']
    function Title(Value: string): iControllerDialogPedirSenha;
    function TextConfirm(Value: string): iControllerDialogPedirSenha;
    function TextCancel(Value: string): iControllerDialogPedirSenha;
    function TextConfirmSenha(Value: string): iControllerDialogPedirSenha;
    function VisibleTextConfirmSenha(Value: Boolean)
      : iControllerDialogPedirSenha;
    function VisibleImage(Value: Double): iControllerDialogPedirSenha;
    function ButtonConfirm(Value: TNotifyEvent): iControllerDialogPedirSenha;
    function ButtonCancel(Value: TNotifyEvent): iControllerDialogPedirSenha;
    procedure Exibir;
  end;

implementation

end.
