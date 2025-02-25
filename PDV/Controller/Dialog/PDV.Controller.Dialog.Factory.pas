unit PDV.Controller.Dialog.Factory;

interface

uses
  PDV.Controller.Dialog.Interfaces, PDV.Controller.Dialog.PedirSnha.Interfaces,
  PDV.Controller.Dialog.LoginCaixa.Interfaces;

type

  TControllerDialogFactory = class(TInterfacedObject, iControllerDialogFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerDialogFactory;
    function PedirSenha: iControllerDialogPedirSenha;
    function LoginCaixa: iControllerDialogLoginCaixa;

  end;

implementation

uses
  PDV.Controller.Dialog.PedirSnha, PDV.Controller.Dialog.LoginCaixa;

{ TControllerDialogFactory }

constructor TControllerDialogFactory.Create;
begin

end;

destructor TControllerDialogFactory.Destroy;
begin

  inherited;
end;

function TControllerDialogFactory.LoginCaixa: iControllerDialogLoginCaixa;
begin
  TControllerDialogLoginCaixa.New;
end;

class function TControllerDialogFactory.New: iControllerDialogFactory;
begin
  Result := Self.Create;
end;

function TControllerDialogFactory.PedirSenha: iControllerDialogPedirSenha;
begin
  Result := TControllerDialogPedirSenha.New;
end;

end.
