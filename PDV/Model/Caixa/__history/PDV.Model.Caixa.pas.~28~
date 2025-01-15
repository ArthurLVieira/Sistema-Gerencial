unit PDV.Model.Caixa;

interface

uses
  PDV.Model.Caixa.Interfaces;

type

  TModelCaixa = class(TInterfacedObject, iModelCaixa, iModelCaixaMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixa;
    function Metodos: iModelCaixaMetodos;

    { Metodos do Caixa }
    function Login: iModelCaixaMetodosLogin;
    function Abertura: iModelCaixaMetodosAbertura;
    function Fechamento: iModelCaixaMetodosFechamento;
    function Bloquear: iModelCaixaMetodosBloquear;
    function Desbloquear: iModelCaixaMetodosDesbloquear;
    function &End: iModelCaixa;
  end;

implementation

{ TModelCaixa }

function TModelCaixa.Abertura: iModelCaixaMetodosAbertura;
begin

end;

function TModelCaixa.Bloquear: iModelCaixaMetodosBloquear;
begin

end;

function TModelCaixa.&End: iModelCaixa;
begin

end;

constructor TModelCaixa.Create;
begin

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

function TModelCaixa.Login: iModelCaixaMetodosLogin;
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

end.
