unit PDV.Model.Usuario.Tipos.Interfaces;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Controller.Usuario.Interfaces;

type

  TUsuarioTipo = (Caixa, Fiscal, Gerente);

  iModelUsuarioTiposFactory = interface
    ['{619A0B06-AC55-4EB0-8E78-4A08170C6D8E}']
    function UsuarioTipo(UsuarioController: iControllerUsuario;
      TipoUsuario: TUsuarioTipo; Parent: iModelUsuario;
      NextResponsability: iModelUsuario): iModelUsuarioMetodos;
  end;

implementation

end.
