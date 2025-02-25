unit PDV.Model.Caixa;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Caixa.Metodos.Intefaces;

type

  TModelCaixa = class(TInterfacedObject, iModelCaixa, iModelCaixaMetodos)
  private
    FMetodosFactory: iModelCaixaMetodosFactory;
    FState: iModelCaixaMetodos;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixa;
    function SetState(Value: iModelCaixaMetodos): iModelCaixa;
    function Metodos: iModelCaixaMetodos;

    { Metodos do Caixa }
    function Abertura: iModelCaixaMetodosAbertura;
    function Fechamento: iModelCaixaMetodosFechamento;
    function Bloquear: iModelCaixaMetodosBloquear;
    function Desbloquear: iModelCaixaMetodosDesbloquear;
    function Sangria: iModelCaixaMetodosSangria;
    function Suprimento: iModelCaixaMetodosSuprimento;
    function &End: iModelCaixa;
  end;

implementation

uses
  PDV.Model.Caixa.Metodos.Factory;

{ TModelCaixa }

function TModelCaixa.Abertura: iModelCaixaMetodosAbertura;
begin
  FState.Abertura;
  Result := FMetodosFactory.Abertura(Self);
end;

function TModelCaixa.Bloquear: iModelCaixaMetodosBloquear;
begin

end;

function TModelCaixa.&End: iModelCaixa;
begin

end;

constructor TModelCaixa.Create;
begin
  FMetodosFactory := TModelCaixaMetodosFactory.New;
end;

function TModelCaixa.Desbloquear: iModelCaixaMetodosDesbloquear;
begin

end;

destructor TModelCaixa.Destroy;
begin

  inherited;
end;

function TModelCaixa.Fechamento: iModelCaixaMetodosFechamento;
begin

end;

function TModelCaixa.Metodos: iModelCaixaMetodos;
begin
  Result := Self;
end;

class function TModelCaixa.New: iModelCaixa;
begin
  Result := Self.Create;
end;

function TModelCaixa.Sangria: iModelCaixaMetodosSangria;
begin

end;

function TModelCaixa.SetState(Value: iModelCaixaMetodos): iModelCaixa;
begin
  Result := Self;
  FState := Value;
end;

function TModelCaixa.Suprimento: iModelCaixaMetodosSuprimento;
begin

end;

end.
