unit PDV.Model.Caixa.Metodos.Abertura;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosAbertura = class(TInterfacedObject,
    iModelCaixaMetodosAbertura)
  private
    FValor: Currency;
    FParent: iModelCaixa;
    FOperador: imodelUsuario;

  public
    constructor Create(Parent: iModelCaixa);
    destructor Destroy; override;
    class function New(Parent: iModelCaixa): iModelCaixaMetodosAbertura;
    function SetValorAbertura(Value: Currency): iModelCaixaMetodosAbertura;
    function SetOperadorAbertura(Value: imodelUsuario)
      : iModelCaixaMetodosAbertura;
    function &End: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosAbertura }

function TModelCaixaMetodosAbertura.&End: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
end;

constructor TModelCaixaMetodosAbertura.Create(Parent: iModelCaixa);
begin
  FParent := Parent;
end;

destructor TModelCaixaMetodosAbertura.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosAbertura.New(Parent: iModelCaixa)
  : iModelCaixaMetodosAbertura;
begin
  Result := Self.Create(Parent);
end;

function TModelCaixaMetodosAbertura.SetOperadorAbertura(Value: imodelUsuario)
  : iModelCaixaMetodosAbertura;
begin

end;

function TModelCaixaMetodosAbertura.SetValorAbertura(Value: Currency)
  : iModelCaixaMetodosAbertura;
begin

end;

end.
