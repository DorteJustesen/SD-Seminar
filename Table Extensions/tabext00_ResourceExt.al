tableextension 50100 "CSD ResourceExt" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            Begin

                Testfield("Unit Cost")

            End;
        }
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = AccountData;
            Caption = 'Resource Type';
            OptionMembers = Internal,External;
        }

        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = AccountData;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; decimal)
        {
            DataClassification = AccountData;
            Caption = 'Quantity Per Day';
        }

    }
}