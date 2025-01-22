unit PDV.Model.Caixa.Metodos.Factory;

interface

uses
  PDV.Model.Caixa.Metodos.Intefaces, PDV.Model.Caixa.Interfaces;

type

  TModelCaixaMetodosFactory = class(TInterfacedObject,
    iModelCaixaMetodosFactory)
  private
    FParent: iModelCaixa;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaMetodosFactory;
    function Abertura(Parent: iModelCaixa): iModelCaixaMetodosAbertura;
    function Fechamento(Parent: iModelCaixa): iModelCaixaMetodosFechamento;
    function Bloquear(Parent: iModelCaixa): iModelCaixaMetodosBloquear;
    function Desbloquear(Parent: iModelCaixa): iModelCaixaMetodosDesbloquear;
  end;

implementation

uses
  PDV.Model.Caixa.Metodos.Abertura, PDV.Model.Caixa.Metodos.Bloquear,
  PDV.Model.Caixa.Metodos.Fechamento, PDV.Model.Caixa.Metodos.Desbloquear;

{ TModelCaixaMetodosFactory }

function TModelCaixaMetodosFactory.Abertura(Parent: iModelCaixa)
  : iModelCaixaMetodosAbertura;
begin
  TModelCaixaMetodosAbertura.New(Parent);
end;

function TModelCaixaMetodosFactory.Bloquear(Parent: iModelCaixa)
  : iModelCaixaMetodosBloquear;
begin
  Result := TModelCaixaMetodosBloquear.New(Parent);
end;

constructor TModelCaixaMetodosFactory.Create;
begin

end;

function TModelCaixaMetodosFactory.Desbloquear(Parent: iModelCaixa)
  : iModelCaixaMetodosDesbloquear;
begin
  Result := TModelCaixaMetodosDesbloquear.New(Parent);
end;

destructor TModelCaixaMetodosFactory.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosFactory.Fechamento(Parent: iModelCaixa)
  : iModelCaixaMetodosFechamento;
begin
  Result := TModelCaixaMetodosFechamento.New(Parent);
end;

class function TModelCaixaMetodosFactory.New: iModelCaixaMetodosFactory;
begin
  Result := Self.Create;
end;

end.
