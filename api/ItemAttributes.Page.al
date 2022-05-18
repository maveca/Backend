page 59901 "My Item Attributes"
{
    ApplicationArea = All;
    Caption = 'My Item Attributes';
    PageType = API;
    SourceTable = "Item Attribute Value Mapping";
    UsageCategory = Lists;
    SourceTableView = where("Table ID" = const(27));
    EntityName = 'itemAttribute';
    EntitySetName = 'itemAttributes';
    APIPublisher = 'kristina';
    APIGroup = 'fm';
    APIVersion = 'v1.0';
    DelayedInsert = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(number; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field(itemAttributeId; GetItemAttributeID(Rec."Item Attribute ID"))
                {
                    ToolTip = 'Specifies the value of the Item Attribute ID field.';
                    ApplicationArea = All;
                }
                field(itemAttributeValueId; GetItemAttributeValueID(Rec."Item Attribute ID", Rec."Item Attribute Value ID"))
                {
                    ToolTip = 'Specifies the value of the Item Attribute Value ID field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    local procedure GetItemAttributeID(ItemAttributeID: Integer): Text
    var
        ItemAttribute: Record "Item Attribute";
    begin
        ItemAttribute.Get(ItemAttributeID);
        exit(ItemAttribute.Name);
    end;

    local procedure GetItemAttributeValueID(ItemAttributeID: Integer; ItemAttributeValueID: Integer): Text
    var
        ItemAttributeValue: Record "Item Attribute Value";
    begin
        if ItemAttributeValue.Get(ItemAttributeID, ItemAttributeValueID) then
            exit(ItemAttributeValue.Value);
    end;
}
