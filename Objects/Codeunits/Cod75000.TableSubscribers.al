codeunit 75000 "ENC Table Subscribers"
{

    [EventSubscriber(ObjectType::Table, Database::"Job", 'OnAfterValidateEvent', 'Currency Code', false, false)]
    procedure Tab167OnAfterValidateEvent(VAR Rec: Record "Job"; VAR xRec: Record "Job"; CurrFieldNo: Integer)
    begin
        if Rec.IsTemporary then
            exit;

        if Rec."Currency Code" <> '' then begin
            Rec.Validate("ENC US FX Rate", GetCurrentCurrencyFactor(Rec."Currency Code"));
            if Rec."Currency Code" = 'USD' then
                Rec."ENC US Project" := true;
        end
        else
            Rec."ENC US FX Rate" := 0;
    end;

    procedure GetCurrentCurrencyFactor(CurrencyCode: Code[10]): Decimal
    var
        Currency: Record "Currency Exchange Rate";
    begin
        Currency.SetRange("Currency Code", CurrencyCode);
        if Currency.FindLast then
            exit(Currency."Relational Exch. Rate Amount");
    end;


    [EventSubscriber(ObjectType::Table, database::"Job", 'OnAfterInsertEvent', '', False, false)]
    local procedure T16OnAfterInsertEvent(var Rec: Record Job)
    begin
        Rec."ENC Forecast Start Date" := WorkDate(0D);
        Rec.Modify();
    end;

}