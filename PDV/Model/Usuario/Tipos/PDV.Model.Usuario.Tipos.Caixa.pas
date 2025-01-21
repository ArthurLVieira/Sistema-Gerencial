unit PDV.Model.Usuario.Tipos.Caixa;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Model.Usuario.Metodos.Interfaces;

type

  TModelUsuarioTipoCaixa = class(TInterfacedObject, iModelUsuarioMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioMetodos;
    function LoginCaixa: iModelUSuarioMetodosLogin;
    function FecharCaixa: iModelUsuarioMetodosFecharCaixa;
  end;

implementation

{ TModelUsuarioTipoCaixa }

constructor TModelUsuarioTipoCaixa.Create;
begin

end;

destructor TModelUsuarioTipoCaixa.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoCaixa.FecharCaixa: iModelUsuarioMetodosFecharCaixa;
begin

end;

function TModelUsuarioTipoCaixa.LoginCaixa: iModelUSuarioMetodosLogin;
begin

end;

class function TModelUsuarioTipoCaixa.New: iModelUsuarioMetodos;
begin
  Result := Self.Create;
end;

end.
