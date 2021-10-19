tableextension 75030 "ENC Job Table Extension" extends Job
{
    Caption = 'Job Table Extension';
    fields
    {
        field(75000; "ENC PM"; Code[20])
        {
            Caption = 'PM';
            DataClassification = ToBeClassified;
            TableRelation = Resource WHERE(Type = CONST(Person));
        }

        field(75001; "ENC POD"; Code[20])
        {
            Caption = 'POD';
            DataClassification = ToBeClassified;
            TableRelation = "Resource Group"."No.";
        }


        field(75002; "ENC Signed"; Enum "ENC Signed")
        {
            Caption = 'Signed';
            DataClassification = ToBeClassified;
        }


        field(75003; "ENC Lead Consultant"; Code[20])
        {
            Caption = 'Lead Consultant';
            DataClassification = ToBeClassified;
            TableRelation = Resource WHERE(Type = CONST(Person));
        }


        field(75004; "ENC Consultant"; Code[100])
        {
            Caption = 'Consultant';
            DataClassification = ToBeClassified;
            //TableRelation = Resource WHERE(Type = CONST(Person));
        }



        field(75005; "ENC Lead Developer"; Code[20])
        {
            Caption = 'Lead Developer';
            DataClassification = ToBeClassified;
            TableRelation = Resource WHERE(Type = CONST(Person));
        }


        field(75006; "ENC Developer"; Code[100])
        {
            Caption = 'Developer';
            DataClassification = ToBeClassified;
            //TableRelation = Resource WHERE(Type = CONST(Person));
        }


        field(75007; "ENC Budget"; Decimal)
        {
            Caption = 'Budget';
            DataClassification = ToBeClassified;
            AutoFormatType = 1;

            trigger OnValidate()
            begin
                UpdateAmounts();
            end;
        }

        field(75008; "ENC Spend To Date"; Decimal)
        {
            Caption = 'Spend To Date';
            DataClassification = ToBeClassified;
            AutoFormatType = 1;

            trigger OnValidate()
            begin
                UpdateAmounts();
            end;
        }


        field(75009; "ENC US Project"; Boolean)
        {
            Caption = 'US Project';
        }

        field(75010; "ENC On Hold/Cancelled"; Boolean)
        {
            Caption = 'On Hold/Cancelled';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                PerWeekUse();
            end;
        }


        field(75011; "ENC Remaining"; Decimal)
        {
            Caption = 'Remaining';
            DataClassification = ToBeClassified;
            Editable = false;
            trigger OnValidate()
            begin
                UpdateAmounts();
            end;
        }

        field(75012; "ENC Rem. in LCY"; Decimal)
        {
            Caption = 'Rem. in LCY';
            DataClassification = ToBeClassified;
            AutoFormatType = 1;
            Editable = false;
            trigger OnValidate()
            begin
                UpdateAmounts();
            end;
        }


        field(75013; "ENC % $"; Decimal)
        {
            Caption = '% $';
            DataClassification = ToBeClassified;
            AutoFormatType = 0;
            Editable = false;
            //AutoFormatExpression = '<percision, 1:1><standardformat,0>%';
            DecimalPlaces = 3;

        }


        field(75014; "ENC % Time"; Decimal)
        {
            Caption = '% Time';
            DataClassification = ToBeClassified;
            AutoFormatType = 1;
            MinValue = -100;
            MaxValue = 100;
            Editable = false;

            // trigger OnValidate()
            // begin
            //     PercentTime();
            // end;
        }

        field(75015; "ENC Attention"; Enum "ENC Attention")
        {
            Caption = 'Attention';
            DataClassification = ToBeClassified;
        }


        field(75016; "ENC Start Date"; Date)
        {
            Caption = 'Start Date';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                PercentTime();
            end;
        }


        field(75017; "ENC Forecast Start Date"; Date)
        {
            Caption = 'Forcast Start Date';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                UpdateWeeks();
                PercentTime();
                UpdateAmounts();
            end;
        }


        field(75018; "ENC Go Live Date"; Date)
        {
            Caption = 'Go Live Date';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                ProjectFinishDate();
                UpdateWeeks();
                PercentTime();

            end;
        }


        field(75019; "ENC Go Live Buffer"; Integer)
        {
            Caption = 'Go Live Buffer';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                ProjectFinishDate();
                UpdateWeeks();
                PercentTime();
                UpdateAmounts();
            end;
        }

        field(75020; "ENC Project Finish Date"; Date)
        {
            Caption = 'Project Finish Date';
            DataClassification = ToBeClassified;
            Editable = false;

            // trigger OnValidate()
            // begin
            //     UpdateWeeks();
            //     PercentTime();
            // end;
        }



        field(75021; "ENC Weeks"; Decimal)
        {
            Caption = 'Weeks';
            DataClassification = ToBeClassified;
            Editable = false;
            AutoFormatType = 1;

            trigger OnValidate()
            begin
                UpdateAmounts();
            end;
        }


        field(75022; "ENC Spend per week"; Decimal)
        {
            Caption = 'Spend per week';
            DataClassification = ToBeClassified;
            AutoFormatType = 1;
            Editable = false;
        }


        field(75023; "ENC Override per week"; Decimal)
        {
            Caption = 'Override per week';
            DataClassification = ToBeClassified;
            AutoFormatType = 1;

            trigger OnValidate()
            begin
                PerWeekUse();
            end;
        }


        field(75024; "ENC Per Week to use"; Decimal)
        {
            Caption = 'Per Week to use';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                UpdateAmounts();
            end;
        }

        field(75025; "ENC Total Planned"; Decimal)
        {
            Caption = 'Total Planned';
            DataClassification = ToBeClassified;
            AutoFormatType = 1;
            Editable = false;


        }


        field(75026; "ENC Hours per week"; Integer)
        {
            Caption = 'Hours per week';
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(75027; "ENC US FX Rate"; Decimal)
        {
            Caption = 'US FX Rate';
            AutoFormatType = 1;
            MinValue = 0;
            DecimalPlaces = 2;
            trigger OnValidate()
            begin
                UpdateAmounts();
            end;

        }

        field(75028; "ENC Float Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Float Name';
        }


        field(75029; "ENC CRM Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'CRM Name';
        }





    }
    local procedure UpdateAmounts()

    begin
        "ENC Remaining" := "ENC Budget" - "ENC Spend To Date";
        //"ENC Rem. in LCY" := "ENC Remaining" * "ENC US FX Rate";
        if "ENC Remaining" < 0 then
            "ENC Remaining" := 0;



        if ("ENC US Project" = false) then
            "ENC Rem. in LCY" := "ENC Remaining"
        else
            "ENC Rem. in LCY" := "ENC Remaining" * "ENC US FX Rate";




        if "ENC Budget" <> 0 then
            "ENC % $" := ("ENC Spend To Date" / "ENC Budget") * 100
        else
            "ENC % $" := 0;



        if ("ENC US Project" = false) and ("ENC Weeks" <> 0) then begin
            "ENC Spend per week" := "ENC Remaining" / "ENC Weeks";
            PerWeekUse();
        end else begin
            if "enc weeks" <> 0 then
                "ENC Spend per week" := "ENC Rem. in LCY" / "ENC Weeks";
            PerWeekUse();
        end;

        "ENC Total Planned" := "ENC Weeks" * "ENC Per Week to use";
        if "ENC Per Week to use" > 0 then
            "ENC Hours per week" := ROUND("ENC Per Week to use" / 185, 1, '<');
    end;

    local procedure UpdateWeeks()
    begin
        if "ENC Project Finish Date" <> 0D then
            "ENC Weeks" := Round(("ENC Project Finish Date" - "ENC Forecast Start Date") / 7, 1, '>')
        else
            "ENC Weeks" := 1;
    end;

    local procedure PercentTime()

    begin
        if "ENC Project Finish Date" > "ENC Forecast Start Date" then
            "ENC % Time" := (("ENC Forecast Start Date" - "ENC Start Date") / ("ENC Project Finish Date" - "ENC Start Date")) * 100
        else
            "ENC % Time" := 1;
    end;



    local procedure ProjectFinishDate()

    begin
        "ENC Project Finish Date" := "ENC Go Live Date" + ("ENC Go Live Buffer" * 7);
    end;


    local procedure SpendPerWeek()

    begin

        if ("ENC US Project" = false) and ("ENC Weeks" <> 0) then begin
            "ENC Spend per week" := "ENC Remaining" / "ENC Weeks";
            perweekuse();
        end else begin
            "ENC Spend per week" := "ENC Rem. in LCY" / "ENC Weeks";
            PerWeekUse();
        end;
    end;


    local procedure PerWeekUse()

    begin
        if "ENC On Hold/Cancelled" = true then
            "ENC Per Week to use" := 0
        else begin
            if "ENC Override per week" = 0 then
                "ENC Per Week to use" := "ENC Spend per week"
            else
                "ENC Per Week to use" := "ENC Override per week";
        end;


    end;


}