/// <summary>
/// Page Resource Picture Entity (ID 59902).
/// </summary>
page 59902 "Image Entity"
{
    APIGroup = 'finance';
    APIPublisher = 'andjela';
    APIVersion = 'v1.0';
    Caption = 'Image Entity';
    Editable = false;
    PageType = API;
    SourceTable = "Tenant Media";
    DelayedInsert = true;
    EntityName = 'image';
    EntitySetName = 'images';
    ODataKeyFields = Id;
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
                {
                    ApplicationArea = All;
                    Caption = 'content';
                    ToolTip = 'Specifies the value of the content field.';
                }
#pragma warning restore AL0273, AW0009
            }
        }
    }
}

