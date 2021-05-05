pageextension 50101 "CSD ResourcelistExt" extends "Resource List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = All;
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage();
    Begin
        Showtype := (Rec.GetFilter(Type) = '');
        ShowMaxField := (rec.GetFilter(Type)) = FORmat(Rec.Type::Machine);

    End;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;

}