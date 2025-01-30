unit PDV.Controller.Dialog.LoginCaixa;

interface

uses
  PDV.Controller.Dialog.LoginCaixa.Interfaces;

type

  TControllerDialogLoginCaixa = class(TInterfacedObject,
    iControllerDialogLoginCaixa)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerDialogLoginCaixa;
  end;

implementation

{ TControllerDialogLoginCaixa }

constructor TControllerDialogLoginCaixa.Create;
begin

end;

destructor TControllerDialogLoginCaixa.Destroy;
begin

  inherited;
end;

class function TControllerDialogLoginCaixa.New: iControllerDialogLoginCaixa;
begin
  Result := Self.Create;
end;

end.
