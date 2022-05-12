/// <summary>
/// Page Resource API (ID 59900).
/// </summary>
page 59900 "Resource API"
{
    APIGroup = 'finance';
    APIPublisher = 'andjela';
    APIVersion = 'v1.0';
    Caption = 'resourceAPI';
    DelayedInsert = true;
    EntityName = 'resource';
    EntitySetName = 'resources';
    PageType = API;
    SourceTable = Resource;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Record identifier';
                }
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(address; Rec.Address)
                {
                    Caption = 'Address';
                }
                field(comment; Rec.Comment)
                {
                    Caption = 'Comment';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(picture; Rec.Image)
                {
                    Caption = 'Picture';
                }
            }
        }
    }
}
