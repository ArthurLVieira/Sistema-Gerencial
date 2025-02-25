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
  end;

implementation

uses
  PDV.Model.Caixa.Metodos.Abertura;

{ TModelCaixaMetodosFactory }

function TModelCaixaMetodosFactory.Abertura(Parent: iModelCaixa)
  : iModelCaixaMetodosAbertura;
begin
  TModelCaixaMetodosAbertura.New(Parent);
end;

constructor TModelCaixaMetodosFactory.Create;
begin

end;

destructor TModelCaixaMetodosFactory.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosFactory.New: iModelCaixaMetodosFactory;
begin
  Result := Self.Create;
end;

end.
