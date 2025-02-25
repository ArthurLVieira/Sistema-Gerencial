unit PDV.Model.Caixa.Metodos.Desbloquear;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelcaixaMetodosDesbloquear = class(TInterfacedObject,
    iModelCaixaMetodosDesbloquear)
  private
    FParent: iModelCaixa;
    FOperador: iModelUsuario;
  public
    constructor Create(Parent: iModelCaixa);
    destructor Destroy; override;
    class function New(Parent: iModelCaixa): iModelCaixaMetodosDesbloquear;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosDesbloquear;
    function &End: iModelCaixaMetodos;
  end;

implementation

{ TModelcaixaMetodosDesbloquear }

function TModelcaixaMetodosDesbloquear.&End: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
end;

constructor TModelcaixaMetodosDesbloquear.Create(Parent: iModelCaixa);
begin
  FParent := Parent;
end;

destructor TModelcaixaMetodosDesbloquear.Destroy;
begin

  inherited;
end;

class function TModelcaixaMetodosDesbloquear.New(Parent: iModelCaixa)
  : iModelCaixaMetodosDesbloquear;
begin
  Result := Self.Create(Parent);
end;

function TModelcaixaMetodosDesbloquear.SetOperador(Value: iModelUsuario)
  : iModelCaixaMetodosDesbloquear;
begin

end;

end.
