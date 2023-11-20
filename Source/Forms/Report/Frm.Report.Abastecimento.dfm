inherited FrmSystemAncestral1: TFrmSystemAncestral1
  Caption = 'FrmSystemAncestral1'
  TextHeight = 15
  inherited PnlMain: TPanel
    object RLReport1: TRLReport
      Left = -16
      Top = 31
      Width = 794
      Height = 1123
      AllowedBands = [btHeader, btTitle, btColumnHeader, btDetail, btColumnFooter, btSummary, btFooter]
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      object Label1: TLabel
        Left = 96
        Top = 64
        Width = 45
        Height = 16
        Caption = 'Valor = '
      end
      object RLLabel1: TRLLabel
        Left = 38
        Top = 38
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Abastecimentos agrupados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 160
        Top = 64
        Width = 4
        Height = 16
        DataField = 'VALOR'
        DataSource = DataSource
        Text = ''
      end
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 328
    Top = 367
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 391
    object ClientDataSetID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object ClientDataSetVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
  end
end
