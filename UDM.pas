unit UDM;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB;

type
  TDataModule4 = class(TDataModule)
    ConectaBanco: TIBDatabase;
    TRSConectaBanco: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
