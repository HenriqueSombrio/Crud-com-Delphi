unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    CDSClientes: TIBDataSet;
    CDSClientesID: TIBBCDField;
    CDSClientesNOME: TIBStringField;
    CDSClientesTELEFONE: TIBStringField;
    CDSClientesCPF: TLargeintField;
    CDSClientesRG: TLargeintField;
    CDSClientesENDERECO: TIBStringField;
    CDSClientesNASCIMENTO: TDateField;
    CDSClientesGRUPO: TIntegerField;
    Label1: TLabel;
    DBId: TDBEdit;
    DSClientes: TDataSource;
    Label2: TLabel;
    DBNome: TDBEdit;
    Label3: TLabel;
    DBTelefone: TDBEdit;
    Label4: TLabel;
    DBCpf: TDBEdit;
    Label5: TLabel;
    DBERg: TDBEdit;
    Label6: TLabel;
    DBGrupo: TDBEdit;
    Label7: TLabel;
    DBEndereco: TDBEdit;
    Label8: TLabel;
    DBNasc: TDBEdit;
    gridClientes: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDM, UPrincipal;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  CDSClientes.Insert;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  CDSClientes.Post;
  UDM.DataModule4.TRSConectaBanco.Commit;
  CDSCLientes.Active := False;
    CDSCLientes.Active := True;
    //Desligando e ligando o dataset para atualizar a grid
end;

end.
