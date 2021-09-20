inherited frmAuditoria: TfrmAuditoria
  ClientHeight = 420
  ClientWidth = 918
  Caption = 'Logs do Sistema'
  BorderStyle = bsDialog
  OnClose = UniFormClose
  BorderIcons = []
  ExplicitWidth = 924
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 73
    ShowHint = True
    ParentShowHint = False
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object UniPanel2: TUniPanel
      Left = 776
      Top = 1
      Width = 141
      Height = 71
      ShowHint = True
      Align = alRight
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
      BorderStyle = ubsNone
      object btClose: TUniBitBtn
        Left = 90
        Top = 25
        Width = 45
        Height = 23
        Hint = 'Fechar a Consulta'
        ShowHint = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000640000006400000000000000000000000000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF8080800000FF8080800000
          FF8080800000FF8080800000FF8080800000FF0000000000000000FF80808000
          00FF8080800000FF0000FF0000FF0000FF0000FF808080C0C0C0808080C0C0C0
          808080C0C0C0808080C0C0C0808080000000808000000000C0C0C0808080C0C0
          C08080800000FF0000FF0000FF00000000000000000000000000000000000000
          0000C0C0C0808080C0C0C0000000808000808000000000000000000000000000
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000008080
          80C0C0C08080800000008080008080008080000000000000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF000000C0C0C0000000000000000000
          0000000000008080008080008080000000000000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF00000000000000000000FFFFFFFFFF00FFFF00
          00008080008080008080000000000000FF0000FF0000FF0000FF0000FF0000FF
          0000FFC0C0C0C0C0C0000000808000000000FFFFFF00FFFFFFFFFF0000000000
          000000008080000000000000FF0000FF0000FF0000FF0000FF00000000000000
          0000000000000000FFFF00808000000000FFFFFF00FFFF000000000000000000
          8080000000000000FF0000FF0000FF0000FF0000FF0000008080008080008080
          00808000FFFF00FFFF0080800000000000000000000080800080800080800000
          00000000FF0000FF0000FF0000FF0000FF000000FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF008080000000000000000000008080008080008080000000000000
          FF0000FF0000FF0000FF0000FF000000000000000000000000000000FFFF0080
          800000000000FFFFFFFFFF0000008080008080008080000000000000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000080800000000000FF
          FFFFFFFF00FFFF0000008080008080008080000000000000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF000000000000000000FFFFFF00FFFF
          FFFFFF0000008080008080008080000000000000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF00000000000000000000FFFFFFFFFF00FFFFFF
          FFFF0000008080008080000000000000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF000000FFFFFF00FFFFFFFFFF00FFFFFFFF
          FF0000008080000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF000000000000000000000000000000000000000000
          0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF}
        TabOrder = 1
        OnClick = btCloseClick
      end
      object tbFiltrar: TUniButton
        Left = 3
        Top = 23
        Width = 75
        Height = 25
        ShowHint = True
        Caption = 'Filtrar'
        TabOrder = 2
        OnClick = tbFiltrarClick
      end
    end
    object UniGroupBox1: TUniGroupBox
      Left = 3
      Top = 1
      Width = 201
      Height = 58
      ShowHint = True
      Caption = 'Filtrar por Data'
      TabOrder = 2
      object edDT_Final: TUniDateTimePicker
        Left = 97
        Top = 26
        Width = 85
        ShowHint = True
        DateTime = 41974.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 1
        OnExit = edDT_FinalExit
      end
      object edDT_Inicial: TUniDateTimePicker
        Left = 6
        Top = 26
        Width = 85
        ShowHint = True
        DateTime = 41974.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 2
      end
      object UniLabel3: TUniLabel
        Left = 7
        Top = 13
        Width = 53
        Height = 13
        ShowHint = True
        Caption = 'Data Inicial'
        TabOrder = 3
      end
      object UniLabel4: TUniLabel
        Left = 97
        Top = 13
        Width = 48
        Height = 13
        ShowHint = True
        Caption = 'Data Final'
        TabOrder = 4
      end
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 73
    Width = 918
    Height = 307
    ShowHint = True
    ParentShowHint = False
    DataSource = ddsAuditoria
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgTabs, dgCancelOnExit]
    ReadOnly = True
    WebOptions.PageSize = 100
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    Summary.Enabled = True
    Columns = <
      item
        FieldName = 'ACAO'
        Title.Caption = 'A'#231#227'o'
        Width = 90
      end
      item
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 300
      end
      item
        FieldName = 'FORM'
        Title.Caption = 'Formul'#225'rio'
        Width = 170
      end
      item
        FieldName = 'DT_ACAO'
        Title.Caption = 'Data A'#231#227'o'
        Width = 64
      end
      item
        FieldName = 'HR_ACAO'
        Title.Caption = 'Hora A'#231#227'o'
        Width = 64
      end
      item
        FieldName = 'IP'
        Title.Caption = 'IP'
        Width = 120
      end
      item
        FieldName = 'USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Width = 120
      end>
  end
  object UniPanel3: TUniPanel
    Left = 0
    Top = 380
    Width = 918
    Height = 40
    ShowHint = True
    ParentShowHint = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 2
    object lblTotalRegistros: TUniLabel
      Left = 4
      Top = 13
      Width = 87
      Height = 13
      ShowHint = True
      Caption = 'Total de Registros'
      TabOrder = 1
    end
  end
  object dqrAuditoria: TZReadOnlyQuery
    Connection = UniMainModule.ZConnection1
    SortedFields = 'dt_acao'
    SortType = stDescending
    AfterScroll = dqrAuditoriaAfterScroll
    SQL.Strings = (
      'SELECT * FROM view_log')
    Params = <>
    IndexFieldNames = 'dt_acao Desc'
    Left = 272
    Top = 32
  end
  object ddsAuditoria: TDataSource
    DataSet = dqrAuditoria
    Left = 512
    Top = 32
  end
  object dqrAuditoriaOriginal: TZReadOnlyQuery
    Connection = UniMainModule.ZConnection1
    SQL.Strings = (
      'SELECT * FROM view_log')
    Params = <>
    Left = 272
    Top = 192
  end
end
