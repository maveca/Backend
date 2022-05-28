/// <summary>
/// Page My Sales Order Entity (ID 59903).
/// </summary>
page 59903 "My Sales Order Entity"
{
    APIGroup = 'finance';
    APIPublisher = 'mladjan';
    APIVersion = 'v1.0';
    Caption = 'mySalesOrderEntity';
    DelayedInsert = true;
    EntityName = 'mySalesOrder';
    EntitySetName = 'mySalesOrders';
    PageType = API;
    SourceTable = "Sales Header";
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'System id';
                }
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
                {
                    Caption = 'Sell-to Customer No.';
                }
                field(billToCustomerNo; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.';
                }
                field(postingDate; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                }
            }
        }
    }

    /// <summary>
    /// This method will post document
    /// </summary>
    /// <returns>Return value of type Text.</returns>
    [ServiceEnabled]
    procedure post(): Text;
    var
        SalesPost: Codeunit "Sales-Post";
    begin
        Rec.Ship := true;
        Rec.Invoice := true;
        Rec."Print Posted Documents" := false;
        SalesPost.Run(Rec);
        exit('You have successfully posted the sales order.');
    end;
}
