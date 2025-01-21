unit PDV.Model.Caixa.State.Aberto;

interface

uses
  PDV.Model.Caixa.Interfaces;

type

  TModelCaixaStateAberto = class(TInterfacedObject, iModelCaixaMetodos)
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

{ TModelCaixaStateAberto }

function TModelCaixaStateAberto.&End: iModelCaixa;
begin

end;

function TModelCaixaStateAberto.Abertura: iModelCaixaMetodosAbertura;
begin
  raise Exception.Create('Caixa Aberto!');
end;

function TModelCaixaStateAberto.Bloquear: iModelCaixaMetodosBloquear;
begin

end;

constructor TModelCaixaStateAberto.Create;
begin

end;

function TModelCaixaStateAberto.Desbloquear: iModelCaixaMetodosDesbloquear;
begin

end;

destructor TModelCaixaStateAberto.Destroy;
begin

  inherited;
end;

function TModelCaixaStateAberto.Fechamento: iModelCaixaMetodosFechamento;
begin

end;

class function TModelCaixaStateAberto.New: iModelCaixaMetodos;
begin
  Result := Self.Create;
end;

function TModelCaixaStateAberto.Sangria: iModelCaixaMetodosSangria;
begin

end;

function TModelCaixaStateAberto.Suprimento: iModelCaixaMetodosSuprimento;
begin

end;

end.
