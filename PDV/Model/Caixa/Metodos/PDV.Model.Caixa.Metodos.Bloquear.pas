unit PDV.Model.Caixa.Metodos.Bloquear;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosBloquear = class(TInterfacedObject,
    iModelCaixaMetodosBloquear)
  private
    FParent: iModelCaixa;
  public
    constructor Create(Parent: iModelCaixa);
    destructor Destroy; override;
    class function New(Parent: iModelCaixa): iModelCaixaMetodosBloquear;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosBloquear;
    function &End: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosBloquear }

function TModelCaixaMetodosBloquear.&End: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
end;

constructor TModelCaixaMetodosBloquear.Create(Parent: iModelCaixa);
begin
  FParent := Parent;
end;

destructor TModelCaixaMetodosBloquear.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosBloquear.New(Parent: iModelCaixa)
  : iModelCaixaMetodosBloquear;
begin
  Result := Self.Create(Parent);
end;

function TModelCaixaMetodosBloquear.SetOperador(Value: iModelUsuario)
  : iModelCaixaMetodosBloquear;
begin

end;

end.
