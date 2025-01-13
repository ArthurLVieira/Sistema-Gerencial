unit PDV.Model.Usuario.Tipos.Caixa;

interface

uses
  PDV.Model.Usuario.Interfaces;

type

  TModelUsuarioTipoCaixa = class(TInterfacedObject, iModelUsuarioMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioMetodos;
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

class function TModelUsuarioTipoCaixa.New: iModelUsuarioMetodos;
begin
  Result := Self.Create;
end;

end.
