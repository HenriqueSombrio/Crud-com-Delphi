program Projeto;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UDM in 'UDM.pas' {DataModule4: TDataModule},
  UCadastroCliente in 'UCadastroCliente.pas' {FrmCadastroCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
  Application.Run;
end.
