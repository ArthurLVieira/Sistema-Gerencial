unit PDV.Model.Usuario.Tipos.Interfaces;

interface

uses
  PDV.Model.Usuario.Interfaces,
  PDV.Controller.Usuario.Operacoes.Interfaces;

type

  TUsuarioTipo = (Caixa, Fiscal, Gerente);

  iModelUsuarioTiposFactory = interface
    ['{619A0B06-AC55-4EB0-8E78-4A08170C6D8E}']
    function UsuarioTipo(ControllerUsuarioOperacoes
  : iControllerUsuarioOperacoes; TipoUsuario: TUsuarioTipo;
  Parent: iModelUsuario; NextResponsability: iModelUsuarioMetodos = nil)
      : iModelUsuarioMetodos;
  end;

implementation

end.
