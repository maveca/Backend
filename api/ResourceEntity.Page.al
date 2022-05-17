/// <summary>
/// Page Resource API (ID 59900).
/// </summary>
page 59900 "Resource Entity"
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
    ODataKeyFields = SystemId;

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
                field(eyeColor; Rec."Eye Color")
                {
                    Caption = 'Eye Color';
                }
                field(image; PictureContent())
                {
                    Caption = 'Image';
                }
                part(picture; "Resource Picture Entity")
                {
                    ApplicationArea = All;
                    Caption = 'picture';
                    EntityName = 'picture';
                    EntitySetName = 'picture';
                    SubPageLink = Id = FIELD(SystemId);
                }
            }
        }
    }

    /// <summary>
    /// Ping.
    /// </summary>
    /// <returns>Return value of type Text.</returns>
    [ServiceEnabled]
    procedure Post(): Text
    var
        DemoPost: Codeunit "Demo Post";
    begin
        Codeunit.Run(Codeunit::"Demo Post");
        exit(DemoPost.Post(Rec));
    end;

    /// <summary>
    /// PictureContent.
    /// </summary>
    /// <returns>Return value of type Text.</returns>
    [ServiceEnabled]
    procedure PictureContent(): Text
    var
        Base64Convert: Codeunit "Base64 Convert";
        TempBlob: Codeunit "Temp Blob";
    begin
        Rec.Image.ExportStream(TempBlob.CreateOutStream());
        exit(Base64Convert.ToBase64(TempBlob.CreateInStream()));
    end;

}
