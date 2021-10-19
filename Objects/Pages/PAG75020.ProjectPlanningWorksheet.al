page 75020 "ENC Project Planning Worksheet"
{
    Caption = 'Project Planning Worksheet';
    PageType = worksheet;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Job;
    CardPageId = "Job Card";

    layout
    {
        area(Content)
        {
            repeater("Project Planning")
            {
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }

                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;

                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;

                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;

                }
                field("ENC PM"; Rec."ENC PM")
                {
                    ApplicationArea = All;
                }


                field("ENC POD"; Rec."ENC POD")
                {
                    ApplicationArea = All;
                }

                field("ENC Signed"; Rec."ENC Signed")
                {
                    ApplicationArea = All;
                }

                field("ENC Lead Consultant"; Rec."ENC Lead Consultant")
                {
                    ApplicationArea = All;
                }

                field("ENC Consultant"; Rec."ENC Consultant")
                {
                    ApplicationArea = All;
                }


                field("ENC Lead Developer"; Rec."ENC Lead Developer")
                {
                    ApplicationArea = All;
                }


                field("ENC Developer"; Rec."ENC Developer")
                {
                    ApplicationArea = All;
                }

                field("ENC US FX Rate"; Rec."ENC US FX Rate")
                {
                    ApplicationArea = all;

                }


                field("ENC Budget"; Rec."ENC Budget")
                {
                    ApplicationArea = All;
                }


                field("ENC Spend To Date"; Rec."ENC Spend To Date")
                {
                    ApplicationArea = All;
                }


                field("ENC US Project"; Rec."ENC US Project")
                {
                    ApplicationArea = All;
                }


                field("ENC On Hold/Cancelled"; Rec."ENC On Hold/Cancelled")
                {
                    ApplicationArea = All;
                }


                field("ENC Remaining"; Rec."ENC Remaining")
                {
                    ApplicationArea = All;
                }


                field("ENC Rem. in LCY"; Rec."ENC Rem. in LCY")
                {
                    ApplicationArea = All;
                }


                field("ENC % $"; Rec."ENC % $")
                {
                    ApplicationArea = All;
                }


                field("ENC % Time"; Rec."ENC % Time")
                {
                    ApplicationArea = All;
                }


                field("ENC Attention"; Rec."ENC Attention")
                {
                    ApplicationArea = All;
                }


                field("ENC Start Date"; Rec."ENC Start Date")
                {
                    ApplicationArea = All;
                }


                field("ENC Forecast Start Date"; Rec."ENC Forecast Start Date")
                {
                    ApplicationArea = All;
                }

                field("ENC Go Live Date"; Rec."ENC Go Live Date")
                {
                    ApplicationArea = All;
                }


                field("ENC Go Live Buffer"; Rec."ENC Go Live Buffer")
                {
                    ApplicationArea = All;
                }


                field("ENC Project Finish Date"; Rec."ENC Project Finish Date")
                {
                    ApplicationArea = All;
                }

                field("ENC Weeks"; Rec."ENC Weeks")
                {
                    ApplicationArea = All;
                }

                field("ENC Spend per week"; Rec."ENC Spend per week")
                {
                    ApplicationArea = All;
                }

                field("ENC Override per week"; Rec."ENC Override per week")
                {
                    ApplicationArea = All;
                }

                field("ENC Per Week to use"; Rec."ENC Per Week to use")
                {
                    ApplicationArea = All;
                }


                field("ENC Total Planned"; Rec."ENC Total Planned")
                {
                    ApplicationArea = All;
                }

                field("ENC Hours per week"; Rec."ENC Hours per week")
                {
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(JobCard)
            {
                ApplicationArea = All;
                Caption = 'Job Card';
                Image = Card;
                RunObject = Page "Job Card";
                RunPageLink = "No." = field("No.");

            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.SetFilter(Status, '<>%1', Rec.Status::Completed);
    end;
}