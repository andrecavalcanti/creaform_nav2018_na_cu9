codeunit 50003 "DXC Install codeunit"
{
    Subtype = Install;

    trigger OnInstallAppPerDatabase()
    begin
        AddMessageToOurTable('OnInstallAppPerDatabase');
    end;

    trigger OnInstallAppPerCompany()
    begin
        AddMessageToOurTable('OnInstallAppPerCompany');
    end;

    local procedure AddMessageToOurTable(MessageFromTrigger: Text)
    var
        CheckInstallProcess: Record "DXC Check install process";
    begin
        CheckInstallProcess.InsertRecord(MessageFromTrigger);
    end;
}