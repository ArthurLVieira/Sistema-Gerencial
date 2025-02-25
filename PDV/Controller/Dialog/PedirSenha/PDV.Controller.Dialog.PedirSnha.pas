unit PDV.Controller.Dialog.PedirSnha;

interface

uses
  PDV.Controller.Dialog.PedirSnha.Interfaces, System.Classes;

type

  TControllerDialogPedirSenha = class(TInterfacedObject,
    iControllerDialogPedirSenha)
  private
    FTitile, FTextConfirm, FTextCancel, FTextConfirmSenha: string;
    FVisibleTextConfirmSenha, FVisibleImage: Boolean;
    FButtonConfirm, FButtonCancel: TNotifyEvent;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerDialogPedirSenha;
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

uses
  PDV.Controller.Forms, PDV.View.Dialog.PedirSenha;

{ TControllerDialogPedirSenha }

function TControllerDialogPedirSenha.ButtonCancel(Value: TNotifyEvent)
  : iControllerDialogPedirSenha;
begin

end;

function TControllerDialogPedirSenha.ButtonConfirm(Value: TNotifyEvent)
  : iControllerDialogPedirSenha;
begin

end;

constructor TControllerDialogPedirSenha.Create;
begin
  FTextConfirm := 'OK';
  FTextCancel := 'Cancelar';
  FVisibleTextConfirmSenha := False;
  FVisibleImage := False;
end;

destructor TControllerDialogPedirSenha.Destroy;
begin

  inherited;
end;

procedure TControllerDialogPedirSenha.Exibir;
begin
  TContrllerForms.Create.CreateForm('TFrmPedirSenha');
  TFrmPedirSenha.Create(nil);
end;

class function TControllerDialogPedirSenha.New: iControllerDialogPedirSenha;
begin
  Result := Self.Create;
end;

function TControllerDialogPedirSenha.TextCancel(Value: string)
  : iControllerDialogPedirSenha;
begin

end;

function TControllerDialogPedirSenha.TextConfirm(Value: string)
  : iControllerDialogPedirSenha;
begin

end;

function TControllerDialogPedirSenha.TextConfirmSenha(Value: string)
  : iControllerDialogPedirSenha;
begin

end;

function TControllerDialogPedirSenha.Title(Value: string)
  : iControllerDialogPedirSenha;
begin

end;

function TControllerDialogPedirSenha.VisibleImage(Value: Double)
  : iControllerDialogPedirSenha;
begin

end;

function TControllerDialogPedirSenha.VisibleTextConfirmSenha(Value: Boolean)
  : iControllerDialogPedirSenha;
begin

end;

end.
