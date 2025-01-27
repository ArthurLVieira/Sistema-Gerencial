unit PDV.Controller.Usuario.Operacoes;

interface

uses
  PDV.Controller.Usuario.Operacoes.Interfaces,
  PDV.Controller.Dialog.PedirSnha.Interfaces;

type

  TControllerUsuarioOperacoes = class(TInterfacedObject,
    iControllerUsuarioOperacoes)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerUsuarioOperacoes;
    function PedirSenha: iControllerDialogPedirSenha;
  end;

implementation

uses
  PDV.Controller.Dialog.PedirSnha;

{ TControllerUsuarioOperacoes }

constructor TControllerUsuarioOperacoes.Create;
begin

end;

destructor TControllerUsuarioOperacoes.Destroy;
begin

  inherited;
end;

class function TControllerUsuarioOperacoes.New: iControllerUsuarioOperacoes;
begin
  Result := Self.Create;
end;

function TControllerUsuarioOperacoes.PedirSenha: iControllerDialogPedirSenha;
begin
  Result := TControllerDialogPedirSenha.New;
end;

end.
