unit PDV.Model.Caixa.State.Fechado;

interface

uses
  PDV.Model.Caixa.Interfaces;

type

  TModelCaixaStateFechado = class(TInterfacedObject, iModelCaixaMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaMetodos;
    function Login: iModelCaixaMetodosLogin;
    function Abertura: iModelCaixaMetodosAbertura;
    function Fechamento: iModelCaixaMetodosFechamento;
    function Bloquear: iModelCaixaMetodosBloquear;
    function Desbloquear: iModelCaixaMetodosDesbloquear;
    function &End: iModelCaixa;
  end;

implementation

uses
  System.SysUtils;

{ TModelCaixaStateFechado }

function TModelCaixaStateFechado.Abertura: iModelCaixaMetodosAbertura;
begin

end;

function TModelCaixaStateFechado.Bloquear: iModelCaixaMetodosBloquear;
begin
  raise Exception.Create('Caixa Fechado!');
end;

function TModelCaixaStateFechado.&End: iModelCaixa;
begin
  raise Exception.Create('Caixa Fechado!');
end;

constructor TModelCaixaStateFechado.Create;
begin

end;

function TModelCaixaStateFechado.Desbloquear: iModelCaixaMetodosDesbloquear;
begin
  raise Exception.Create('Caixa Fechado!');
end;

destructor TModelCaixaStateFechado.Destroy;
begin

  inherited;
end;

function TModelCaixaStateFechado.Fechamento: iModelCaixaMetodosFechamento;
begin
  raise Exception.Create('Caixa Fechado!');
end;

function TModelCaixaStateFechado.Login: iModelCaixaMetodosLogin;
begin

end;

class function TModelCaixaStateFechado.New: iModelCaixaMetodos;
begin
  Result := Self.Create;
end;

end.
