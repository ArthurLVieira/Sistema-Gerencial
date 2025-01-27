unit PDV.Controller.Dialog.Factory;

interface

uses
  PDV.Controller.Dialog.Interfaces, PDV.Controller.Dialog.PedirSnha.Interfaces;

type

  TControllerDialogFactory = class(TInterfacedObject, iControllerDialogFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerDialogFactory;
    function PedirSenha: iControllerDialogPedirSenha;

  end;

implementation

uses
  PDV.Controller.Dialog.PedirSnha;

{ TControllerDialogFactory }

constructor TControllerDialogFactory.Create;
begin

end;

destructor TControllerDialogFactory.Destroy;
begin

  inherited;
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
