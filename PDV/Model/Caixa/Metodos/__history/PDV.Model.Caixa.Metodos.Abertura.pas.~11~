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
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaMetodosAbertura;
    function SetValorAbertura(Value: Currency): iModelCaixaMetodosAbertura;
    function SetOperadorAbertura(Value: imodelUsuario)
      : iModelCaixaMetodosAbertura;
    function &End: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosAbertura }

constructor TModelCaixaMetodosAbertura.Create;
begin

end;

destructor TModelCaixaMetodosAbertura.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosAbertura.New: iModelCaixaMetodosAbertura;
begin
  Result := Self.Create;
end;

end.

  end.
