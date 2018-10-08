object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 516
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mnu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mnu1: TMainMenu
    Left = 312
    Top = 256
    object mnuCadastro: TMenuItem
      Caption = 'Cadastro'
      object mnu_CadastroClientes: TMenuItem
        Caption = 'Cliente'
        OnClick = mnu_CadastroClientesClick
      end
    end
    object Sai1: TMenuItem
      Caption = 'Sair'
    end
  end
end
