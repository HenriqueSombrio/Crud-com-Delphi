object DataModule4: TDataModule4
  OldCreateOrder = False
  Height = 543
  Width = 555
  object ConectaBanco: TIBDatabase
    Connected = True
    DatabaseName = 
      'C:\Users\Usuario\Documents\Embarcadero\Studio\Projects\Estudos\P' +
      'rojetoSilbeck\CADASTRO.FDB'
    Params.Strings = (
      'password=masterkey'
      'lc_ctype=WIN1252'
      'user_name=SYSDBA')
    LoginPrompt = False
    DefaultTransaction = TRSConectaBanco
    ServerType = 'IBServer'
    Left = 56
    Top = 96
  end
  object TRSConectaBanco: TIBTransaction
    Active = True
    AllowAutoStart = False
    DefaultDatabase = ConectaBanco
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 176
    Top = 80
  end
end
