pageextension 59900 "Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addafter("Name 2")
        {
            field(LongName; MyLongDescription)
            {
                Caption = 'Long Text';
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Long Description field.';
                MultiLine = true;
                RowSpan = 2;

                trigger OnValidate()
                begin
                    SetLongDescription();
                end;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        MyLongDescription := GetLongDescription();
    end;

    var
        MyLongDescription: Text;

    local procedure GetLongDescription() Result: Text
    var
        MyInStream: InStream;
    begin
        Result := '';
        Rec.CalcFields("Long Description");
        If Rec."Long Description".HasValue() then begin
            Rec."Long Description".CreateInStream(MyInStream);
            MyInStream.Read(Result);
        end;
    end;

    local procedure SetLongDescription()
    var
        MyOutStream: OutStream;
    begin
        CurrPage.Update(true);
        Rec."Long Description".CreateOutStream(MyOutStream);
        MyOutStream.Write(MyLongDescription);
        Rec.Modify(true);
    end;
}
