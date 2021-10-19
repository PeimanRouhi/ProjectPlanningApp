pageextension 75020 "ENC Job Card Extenstion" extends "Job Card"
{
    //Caption = 'Job Card Extenstion';
    layout
    {

        addlast(content)
        {
            group("Project Planning")
            {
                field("ENC PM"; "ENC PM")
                {
                    ApplicationArea = all;

                }

                field("ENC POD"; "ENC POD")
                {
                    ApplicationArea = all;
                }


                field("ENC Signed"; "ENC Signed")
                {
                    ApplicationArea = all;
                }


                field("ENC Lead Consultant"; "ENC Lead Consultant")
                {
                    ApplicationArea = all;
                }


                field("ENC Consultant"; "ENC Consultant")
                {
                    ApplicationArea = all;
                    trigger OnLookup(var TextVar: Text): Boolean
                    var
                        ResourceList: Page "Resource List";
                        Resource: Record "Resource";
                    begin
                        Clear(Rec."ENC Developer");

                        ResourceList.LOOKUPMODE(TRUE);
                        Resource.SETRANGE(Type, Resource.Type::person);
                        ResourceList.SETTABLEVIEW(Resource);
                        IF ResourceList.RUNMODAL = ACTION::LookupOK THEN BEGIN
                            TextVar += ResourceList.GetSelectionFilter;
                            EXIT(TRUE);
                        END else
                            EXIT(FALSE)
                    end;



                }



                field("ENC Lead Developer"; "ENC Lead Developer")
                {
                    ApplicationArea = all;
                }


                field("ENC Developer"; "ENC Developer")
                {
                    ApplicationArea = all;
                    trigger OnLookup(var TextVar: Text): Boolean
                    var
                        ResourceList: Page "Resource List";
                        Resource: Record "Resource";
                    begin
                        Clear(Rec."ENC Developer");

                        ResourceList.LOOKUPMODE(TRUE);
                        Resource.SETRANGE(Type, Resource.Type::person);
                        ResourceList.SETTABLEVIEW(Resource);
                        IF ResourceList.RUNMODAL = ACTION::LookupOK THEN BEGIN
                            TextVar += ResourceList.GetSelectionFilter;
                            EXIT(TRUE);
                        END else
                            EXIT(FALSE)
                    end;
                }

                field("ENC US FX Rate"; "ENC US FX Rate")
                {
                    ApplicationArea = all;
                }

                field("ENC Float Name"; "ENC Float Name")
                {
                    ApplicationArea = all;
                }

                field("ENC CRM Name"; "ENC CRM Name")
                {
                    ApplicationArea = all;
                }

                field("ENC Budget"; "ENC Budget")
                {
                    ApplicationArea = all;
                }


                field("ENC Spend To Date"; "ENC Spend To Date")
                {
                    ApplicationArea = all;
                }


                field("ENC US Project"; "ENC US Project")
                {
                    ApplicationArea = all;
                }

                field("ENC On Hold/Cancelled"; "ENC On Hold/Cancelled")
                {
                    ApplicationArea = all;
                }


                field("ENC Remaining"; "ENC Remaining")
                {
                    ApplicationArea = all;
                }

                field("ENC Rem. in LCY"; "ENC Rem. in LCY")
                {
                    ApplicationArea = all;
                }


                field("ENC % $"; "ENC % $")
                {
                    ApplicationArea = all;
                }


                field("ENC % Time"; "ENC % Time")
                {
                    ApplicationArea = all;
                }

                field("ENC Attention"; "ENC Attention")
                {
                    ApplicationArea = all;
                }


                field("ENC Start Date"; "ENC Start Date")
                {
                    ApplicationArea = all;
                }


                field("ENC Forecast Start Date"; "ENC Forecast Start Date")
                {
                    ApplicationArea = all;
                }


                field("ENC Go Live Date"; "ENC Go Live Date")
                {
                    ApplicationArea = all;
                }


                field("ENC Go Live Buffer"; "ENC Go Live Buffer")
                {
                    ApplicationArea = all;
                }

                field("ENC Project Finish Date"; "ENC Project Finish Date")
                {
                    ApplicationArea = all;
                }



                field("ENC Weeks"; "ENC Weeks")
                {
                    ApplicationArea = all;
                }


                field("ENC Spend per week"; "ENC Spend per week")
                {
                    ApplicationArea = all;
                }


                field("ENC Override per week"; "ENC Override per week")
                {
                    ApplicationArea = all;
                }


                field("ENC Per Week to use"; "ENC Per Week to use")
                {
                    ApplicationArea = all;
                }

                field("ENC Total Planned"; "ENC Total Planned")
                {
                    ApplicationArea = all;
                }


                field("ENC Hours per week"; "ENC Hours per week")
                {
                    ApplicationArea = all;
                }





            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}