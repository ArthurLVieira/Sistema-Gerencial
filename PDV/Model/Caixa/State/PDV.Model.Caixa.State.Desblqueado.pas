unit PDV.Model.Caixa.State.Desblqueado;

interface

uses
  PDV.Model.Caixa.Interfaces;

type

  TModelCaxaiStateDesbloqueado = class(TInterfacedObject, iModelCaixaMetodos)
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

{ TModelCaxaiStateDesbloqueado }

function TModelCaxaiStateDesbloqueado.Abertura: iModelCaixaMetodosAbertura;
begin

end;

function TModelCaxaiStateDesbloqueado.Bloquear: iModelCaixaMetodosBloquear;
begin

end;

function TModelCaxaiStateDesbloqueado.&End: iModelCaixa;
begin

end;

constructor TModelCaxaiStateDesbloqueado.Create;
begin

end;

function TModelCaxaiStateDesbloqueado.Desbloquear
  : iModelCaixaMetodosDesbloquear;
begin
  raise Exception.Create('Caixa Desbloqueado!');
end;

destructor TModelCaxaiStateDesbloqueado.Destroy;
begin

  inherited;
end;

function TModelCaxaiStateDesbloqueado.Fechamento: iModelCaixaMetodosFechamento;
begin

end;

class function TModelCaxaiStateDesbloqueado.New: iModelCaixaMetodos;
begin
  Result := Self.Create;
end;

function TModelCaxaiStateDesbloqueado.Sangria: iModelCaixaMetodosSangria;
begin

end;

function TModelCaxaiStateDesbloqueado.Suprimento: iModelCaixaMetodosSuprimento;
begin

end;

end.
