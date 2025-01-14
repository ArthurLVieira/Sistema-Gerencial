unit PDV.View.Dialog.PedirSenha;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListBox,
  FMX.Edit, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects,
  FMX.Layouts, FMX.Types;

type
  TFrmPedirSenha = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    Layout8: TLayout;
    Image1: TImage;
    LblTitle: TLabel;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    Layout5: TLayout;
    Layout6: TLayout;
    Rectangle3: TRectangle;
    ShadowEffect1: TShadowEffect;
    Label1: TLabel;
    edtQntProduto: TEdit;
    Label2: TLabel;
    Layout7: TLayout;
    Layout9: TLayout;
    Rectangle4: TRectangle;
    ShadowEffect2: TShadowEffect;
    Image2: TImage;
    Label6: TLabel;
    ComboBox1: TComboBox;
    LblConfimSenha: TLabel;
    Layout10: TLayout;
    Layout11: TLayout;
    BtnConfirm: TButton;
    BtnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ExibeForm(Title, TextConfirm, TextCancel, TextConfirmSenha
      : string; VisibleTextConfirmSenha, VisibleImage: Boolean;
      ButtonConfirm, ButtonCancel: TNotifyEvent);

  end;

var
  FrmPedirSenha: TFrmPedirSenha;

implementation

{$R *.fmx}
{ TForm2 }

procedure TFrmPedirSenha.ExibeForm(Title, TextConfirm, TextCancel,
  TextConfirmSenha: string; VisibleTextConfirmSenha, VisibleImage: Boolean;
  ButtonConfirm, ButtonCancel: TNotifyEvent);
begin
  LblTitle.Text := Title;
  BtnConfirm.Text := TextConfirm;
  BtnCancel.Text := TextCancel;
  LblConfimSenha.Text := TextConfirmSenha;
  LblConfimSenha.Visible := VisibleTextConfirmSenha;
  Layout9.Visible := VisibleImage;
  BtnConfirm.OnClick := ButtonConfirm;
  BtnCancel.OnClick := ButtonCancel;
end;

initialization

RegisterFmxClasses([TFrmPedirSenha]);

end.
