codeunit 59900 "Demo Post"
{
    TableNo = Resource;
    trigger OnRun()
    begin
        Error('OnRun: %1', Rec.Name);
    end;

    /// <summary>
    /// Post.
    /// </summary>
    /// <param name="Resource">Record Resource.</param>
    /// <returns>Return value of type Text.</returns>
    procedure Post(Resource: Record Resource): Text
    begin
        if Resource."No." = '' then
            Error('Something went wrong.');
        exit(StrSubstNo('Invoice no. %1 has been posted.', Resource."No."));
    end;
}