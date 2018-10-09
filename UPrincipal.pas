unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mnu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnu_CadastroClientes: TMenuItem;
    Sai1: TMenuItem;
    procedure mnu_CadastroClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UCadastroCliente;

procedure TfrmPrincipal.mnu_CadastroClientesClick(Sender: TObject);
begin
  FrmCadastroCliente.ShowModal;
end;

end.
