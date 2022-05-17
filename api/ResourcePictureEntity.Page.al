/// <summary>
/// Page Resource Picture Entity (ID 59902).
/// </summary>
page 59902 "Resource Picture Entity"
{
    Caption = 'Resource Picture Entity';
    DelayedInsert = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    PageType = ListPart;
    SourceTable = "Tenant Media";
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Rec.Id)
                {
                    ApplicationArea = All;
                    Caption = 'id', Locked = true;
                    Editable = false;
                    ToolTip = 'Specifies the value of the id field.';
                }
                field(width; Rec.Width)
                {
                    ApplicationArea = All;
                    Caption = 'width', Locked = true;
                    Editable = false;
                    ToolTip = 'Specifies the value of the width field.';
                }
                field(height; Rec.Height)
                {
                    ApplicationArea = All;
                    Caption = 'height', Locked = true;
                    Editable = false;
                    ToolTip = 'Specifies the value of the height field.';
                }
                field(contentType; Rec."Mime Type")
                {
                    ApplicationArea = All;
                    Caption = 'contentType';
                    Editable = false;
                    ToolTip = 'Specifies the value of the contentType field.';
                }
#pragma warning disable AL0273, AW0009                
                field(content; Rec.Content)
#pragma warning restore AL0273, AW0009
                {
                    ApplicationArea = All;
                    Caption = 'content';
                    ToolTip = 'Specifies the value of the content field.';
                }
            }
        }
    }
}

