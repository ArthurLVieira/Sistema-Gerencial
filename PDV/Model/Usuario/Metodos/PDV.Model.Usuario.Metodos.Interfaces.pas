unit PDV.Model.Usuario.Metodos.Interfaces;

interface

type

  iModelUSuarioMetodosLogin = interface;
  iModelUsuarioMetodosFecharCaixa = interface;

  iModelUsuarioMetodos = interface
    ['{ED6E207E-99FB-4C07-8384-BF24D27CF5C5}']
    function LoginCaixa: iModelUSuarioMetodosLogin;
    function FecharCaixa: iModelUsuarioMetodosFecharCaixa;
  end;

  iModelUSuarioMetodosLogin = interface
    ['{549C7CAD-A0CD-4EFB-92EA-75F7225EFDBD}']
    function &End: iModelUsuarioMetodos;
  end;

  iModelUsuarioMetodosFecharCaixa = interface
    ['{9B48FC85-C64F-4E25-A12F-DA06721C1115}']
  end;

implementation

end.
