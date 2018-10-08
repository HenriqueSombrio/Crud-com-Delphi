object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 490
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBId
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBNome
  end
  object Label3: TLabel
    Left = 8
    Top = 136
    Width = 50
    Height = 17
    Caption = 'TELEFONE'
    FocusControl = DBTelefone
  end
  object Label4: TLabel
    Left = 8
    Top = 176
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBCpf
  end
  object Label5: TLabel
    Left = 8
    Top = 216
    Width = 14
    Height = 13
    Caption = 'RG'
    FocusControl = DBERg
  end
  object Label6: TLabel
    Left = 8
    Top = 256
    Width = 35
    Height = 13
    Caption = 'GRUPO'
    FocusControl = DBGrupo
  end
  object Label7: TLabel
    Left = 8
    Top = 296
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEndereco
  end
  object Label8: TLabel
    Left = 8
    Top = 336
    Width = 66
    Height = 13
    Caption = 'NASCIMENTO'
    FocusControl = DBNasc
  end
  object DBId: TDBEdit
    Left = 8
    Top = 72
    Width = 251
    Height = 21
    DataField = 'ID'
    DataSource = DSClientes
    TabOrder = 0
  end
  object DBNome: TDBEdit
    Left = 8
    Top = 109
    Width = 409
    Height = 21
    DataField = 'NOME'
    DataSource = DSClientes
    TabOrder = 1
  end
  object DBTelefone: TDBEdit
    Left = 8
    Top = 152
    Width = 186
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DSClientes
    TabOrder = 2
  end
  object DBCpf: TDBEdit
    Left = 8
    Top = 192
    Width = 199
    Height = 21
    DataField = 'CPF'
    DataSource = DSClientes
    TabOrder = 3
  end
  object DBERg: TDBEdit
    Left = 8
    Top = 232
    Width = 199
    Height = 21
    DataField = 'RG'
    DataSource = DSClientes
    TabOrder = 4
  end
  object DBGrupo: TDBEdit
    Left = 8
    Top = 272
    Width = 134
    Height = 21
    DataField = 'GRUPO'
    DataSource = DSClientes
    TabOrder = 5
  end
  object DBEndereco: TDBEdit
    Left = 8
    Top = 309
    Width = 409
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DSClientes
    TabOrder = 6
  end
  object DBNasc: TDBEdit
    Left = 8
    Top = 352
    Width = 134
    Height = 21
    DataField = 'NASCIMENTO'
    DataSource = DSClientes
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
  end
  object gridClientes: TDBGrid
    Left = 448
    Top = 72
    Width = 320
    Height = 393
    DataSource = DSClientes
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NASCIMENTO'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 414
    Width = 75
    Height = 35
    Caption = 'BtnInserir'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 414
    Width = 75
    Height = 35
    Caption = 'BtnSalvar'
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 200
    Top = 414
    Width = 75
    Height = 35
    Caption = 'BtnAbortar'
    TabOrder = 11
  end
  object BitBtn4: TBitBtn
    Left = 296
    Top = 414
    Width = 75
    Height = 35
    Caption = 'BtnExcluir'
    TabOrder = 12
  end
  object CDSClientes: TIBDataSet
    Database = DataModule4.ConectaBanco
    Transaction = DataModule4.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  ID = :OLD_ID and'
      '  NOME = :OLD_NOME and'
      '  TELEFONE = :OLD_TELEFONE and'
      '  CPF = :OLD_CPF and'
      '  RG = :OLD_RG and'
      '  ENDERECO = :OLD_ENDERECO and'
      '  NASCIMENTO = :OLD_NASCIMENTO and'
      '  GRUPO = :OLD_GRUPO')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      '  (ID, NOME, TELEFONE, CPF, RG, ENDERECO, NASCIMENTO, GRUPO)'
      'values'
      
        '  (:ID, :NOME, :TELEFONE, :CPF, :RG, :ENDERECO, :NASCIMENTO, :GR' +
        'UPO)')
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'select * from CLIENTE')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  ID = :ID,'
      '  NOME = :NOME,'
      '  TELEFONE = :TELEFONE,'
      '  CPF = :CPF,'
      '  RG = :RG,'
      '  ENDERECO = :ENDERECO,'
      '  NASCIMENTO = :NASCIMENTO,'
      '  GRUPO = :GRUPO'
      'where'
      '  ID = :OLD_ID and'
      '  NOME = :OLD_NOME and'
      '  TELEFONE = :OLD_TELEFONE and'
      '  CPF = :OLD_CPF and'
      '  RG = :OLD_RG and'
      '  ENDERECO = :OLD_ENDERECO and'
      '  NASCIMENTO = :OLD_NASCIMENTO and'
      '  GRUPO = :OLD_GRUPO')
    ParamCheck = True
    UniDirectional = False
    Left = 544
    Top = 384
    object CDSClientesID: TIBBCDField
      FieldName = 'ID'
      Origin = '"CLIENTE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 18
      Size = 2
    end
    object CDSClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTE"."NOME"'
      Required = True
      Size = 60
    end
    object CDSClientesTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"CLIENTE"."TELEFONE"'
      Size = 14
    end
    object CDSClientesCPF: TLargeintField
      FieldName = 'CPF'
      Origin = '"CLIENTE"."CPF"'
    end
    object CDSClientesRG: TLargeintField
      FieldName = 'RG'
      Origin = '"CLIENTE"."RG"'
    end
    object CDSClientesGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"CLIENTE"."GRUPO"'
    end
    object CDSClientesENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTE"."ENDERECO"'
      Size = 300
    end
    object CDSClientesNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = '"CLIENTE"."NASCIMENTO"'
    end
  end
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 608
    Top = 384
  end
end
