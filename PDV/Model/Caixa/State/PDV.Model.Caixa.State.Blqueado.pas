unit PDV.Model.Caixa.State.Blqueado;

interface

uses
  PDV.Model.Caixa.Interfaces;

type

  TModelCaixaStateBloqueado = class(TInterfacedObject, iModelCaixaMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaMetodos;
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
  System.SysUtils;

{ TModelCaixaStateBloqueado }

function TModelCaixaStateBloqueado.Abertura: iModelCaixaMetodosAbertura;
begin
  raise Exception.Create('Caixa Bloqueado!');
end;

function TModelCaixaStateBloqueado.Bloquear: iModelCaixaMetodosBloquear;
begin
  raise Exception.Create('Caixa Bloqueado!');
end;

function TModelCaixaStateBloqueado.&End: iModelCaixa;
begin

end;

constructor TModelCaixaStateBloqueado.Create;
begin

end;

function TModelCaixaStateBloqueado.Desbloquear: iModelCaixaMetodosDesbloquear;
begin

end;

destructor TModelCaixaStateBloqueado.Destroy;
begin

  inherited;
end;

function TModelCaixaStateBloqueado.Fechamento: iModelCaixaMetodosFechamento;
begin
  raise Exception.Create('Caixa Bloqueado!');
end;

class function TModelCaixaStateBloqueado.New: iModelCaixaMetodos;
begin
  Result := Self.Create;
end;

function TModelCaixaStateBloqueado.Sangria: iModelCaixaMetodosSangria;
begin

end;

function TModelCaixaStateBloqueado.Suprimento: iModelCaixaMetodosSuprimento;
begin

end;

end.
