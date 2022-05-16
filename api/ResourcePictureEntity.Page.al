page 59902 "Resource Picture Entity"
// page 5468 "Picture Entity"
{
    Caption = 'Picture Entity';
    DelayedInsert = true;
    InsertAllowed = false;
    PageType = ListPart;
    SourceTable = "Picture Entity";
    SourceTableTemporary = true;

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
                }
                field(width; Rec.Width)
                {
                    ApplicationArea = All;
                    Caption = 'width', Locked = true;
                    Editable = false;
                }
                field(height; Rec.Height)
                {
                    ApplicationArea = All;
                    Caption = 'height', Locked = true;
                    Editable = false;
                }
                field(contentType; Rec."Mime Type")
                {
                    ApplicationArea = All;
                    Caption = 'contentType';
                    Editable = false;
                }
                field(content; Rec.Content)
                {
                    ApplicationArea = All;
                    Caption = 'content';
                }
            }
        }
    }

    actions
    {
    }

    // trigger OnDeleteRecord(): Boolean
    // begin
    //     DeletePicture;
    // end;

    // trigger OnFindRecord(Which: Text): Boolean
    // begin
    //     if not DataLoaded then begin
    //         Rec.LoadData(GetFilter(Id));
    //         Insert(true);
    //     end;

    //     DataLoaded := true;
    //     exit(true);
    // end;

    // trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    // begin
    //     SavePicture;
    // end;

    // trigger OnModifyRecord(): Boolean
    // begin
    //     SavePicture;
    // end;

    var
        DataLoaded: Boolean;
}

