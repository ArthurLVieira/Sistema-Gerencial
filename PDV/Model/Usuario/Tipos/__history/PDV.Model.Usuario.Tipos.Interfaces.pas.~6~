unit PDV.Model.Usuario.Tipos.Interfaces;

interface

uses
  PDV.Model.Usuario.Interfaces;

type

  TUsuarioTipo = (Caixa, Fiscal, Gerente);
  iModelUSuarioMetodosLogin = interface;

  iModelUsuarioTiposFactory = interface
    ['{619A0B06-AC55-4EB0-8E78-4A08170C6D8E}']
    function UsuarioTipo(Parent: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
  end;

  iModelUsuarioMetodos = interface
    ['{766F6D5F-0C11-40C3-9E46-BA20A7A4DE98}']
    function LoginCaixa: iModelUSuarioMetodosLogin;
  end;

  iModelUSuarioMetodosLogin = interface
    ['{549C7CAD-A0CD-4EFB-92EA-75F7225EFDBD}']
    function &End: iModelUsuarioMetodos;
  end;

implementation

end.
