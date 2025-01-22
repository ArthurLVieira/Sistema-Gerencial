unit PDV.Model.Caixa.Metodos.Desbloquear;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosDesbloquear = class(TInterfacedObject,
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

{ TModelCaixaMetodosDesbloquear }

function TModelCaixaMetodosDesbloquear.&End: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
end;

constructor TModelCaixaMetodosDesbloquear.Create(Parent: iModelCaixa);
begin
  FParent := Parent;
end;

destructor TModelCaixaMetodosDesbloquear.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosDesbloquear.New(Parent: iModelCaixa)
  : iModelCaixaMetodosDesbloquear;
begin
  Result := Self.Create(Parent);
end;

function TModelCaixaMetodosDesbloquear.SetOperador(Value: iModelUsuario)
  : iModelCaixaMetodosDesbloquear;
begin
  Result := Self;
  FOperador := Value;
end;

end.
