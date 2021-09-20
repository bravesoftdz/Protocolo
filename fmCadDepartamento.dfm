inherited frmCadDepartamento: TfrmCadDepartamento
  Caption = 'Cadastro de Departamento'
  BorderIcons = []
  Font.Name = 'Arial'
  PixelsPerInch = 96
  TextHeight = 14
  inherited PageControl1: TUniPageControl
    ActivePage = tbCadastro
    inherited tbCadastro: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 731
      ExplicitHeight = 376
      inherited UniPanel4: TUniPanel
        Top = 336
        ExplicitTop = 336
      end
      object edDepartamento: TUniDBEdit
        Left = 10
        Top = 38
        Width = 580
        Height = 23
        ShowHint = True
        DataField = 'departamento'
        DataSource = ddsMain
        TabOrder = 1
      end
      object UniLabel3: TUniLabel
        Left = 10
        Top = 17
        Width = 67
        Height = 14
        ShowHint = True
        Caption = 'Departamento'
        TabOrder = 2
      end
    end
    inherited tbConsulta: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 731
      ExplicitHeight = 376
      inherited UniPanel1: TUniPanel
        inherited UniLabel1: TUniLabel
          Width = 46
          Height = 14
          ExplicitWidth = 46
          ExplicitHeight = 14
        end
        inherited UniLabel2: TUniLabel
          Width = 166
          Height = 14
          ExplicitWidth = 166
          ExplicitHeight = 14
        end
      end
      inherited DBGrid1: TUniDBGrid
        Height = 294
      end
    end
  end
  inherited dqrMain: TZTable
    TableName = 'tb_departamento'
    object dqrMainid_departamento: TIntegerField
      Tag = 1
      FieldName = 'id_departamento'
      Required = True
    end
    object dqrMaindepartamento: TWideStringField
      FieldName = 'Departamento'
      Size = 140
    end
  end
end
