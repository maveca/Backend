/// <summary>
/// Codeunit Ping (ID 59901).
/// </summary>
codeunit 59901 Ping
{
    /// <summary>
    /// Ping.
    /// </summary>
    /// <returns>Return value of type Text.</returns>
    procedure Ping(): Text;
    begin
        exit('pong');
    end;
}