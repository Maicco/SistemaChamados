using System;
using System.Data.SqlClient;

/// <summary>
/// Descrição resumida de DBConnection
/// </summary>
public class DBConnection
{
    private string connectionString = "Data Source=192.168.24.5;Initial Catalog=TesteDB;User ID=sa;Password=Cr3c15p";

    public DBConnection()
    {
        //
        // TODO: Adicionar lógica do construtor aqui
        //
    }

    private void OpenDBConnection ()
    {
        SqlConnection connection = new SqlConnection(connectionString);

        try
        {
            connection.Open();

            connection.Close();
        }
        catch(Exception ex)
        {

        }
    }

    public string SelectAllData ()
    {


        return "";
    }
}