unit PDV.Model.Caixa.Metodos.Fechamento;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosFechamento = class(TInterfacedObject,
    iModelCaixaMetodosFechamento)
  private
    FParent: iModelCaixa;
    FValor: Currency;
    FOperador: iModelUsuario;
  public
    constructor Create(Parent: iModelCaixa);
    destructor Destroy; override;
    class function New(Parent: iModelCaixa): iModelCaixaMetodosFechamento;
    function SetValorFechamento(Value: Currency): iModelCaixaMetodosFechamento;
    function SetOperadorFechamento(Value: iModelUsuario)
      : iModelCaixaMetodosFechamento;
    function &End: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosFechamento }

function TModelCaixaMetodosFechamento.&End: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
end;

constructor TModelCaixaMetodosFechamento.Create(Parent: iModelCaixa);
begin
  FParent := Parent;
end;

destructor TModelCaixaMetodosFechamento.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosFechamento.New(Parent: iModelCaixa)
  : iModelCaixaMetodosFechamento;
begin
  Result := Self.Create(Parent);
end;

function TModelCaixaMetodosFechamento.SetOperadorFechamento
  (Value: iModelUsuario): iModelCaixaMetodosFechamento;
begin

end;

function TModelCaixaMetodosFechamento.SetValorFechamento(Value: Currency)
  : iModelCaixaMetodosFechamento;
begin

end;

end.
