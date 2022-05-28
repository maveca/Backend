/// <summary>
/// PageExtension My Sales Order (ID 59901) extends Record Sales Order.
/// </summary>
pageextension 59901 "My Sales Order" extends "Sales Order"
{
    actions
    {
        addlast(processing)
        {
            action(PostDirectly)
            {
                ApplicationArea = All;
                ToolTip = 'Executes the PostDirectly action.';
                Caption = 'Post Directly';
                Image = PostedOrder;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Post();
                end;
            }
        }
    }

    local procedure Post(): Text;
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
