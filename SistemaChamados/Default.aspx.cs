using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void searchButton_Click(object sender, EventArgs e)
    {

    }

    protected void Teste_Click(object sender, EventArgs e)
    {
        DBConnection db = new DBConnection();

        testeLabel.Text = db.SelectAllData();
    }
}