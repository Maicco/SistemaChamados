using System;
using System.Data.SqlClient;

/// <summary>
/// Descrição resumida de DBConnection
/// </summary>
public class DBConnection
{
    private const string connectionString = "Data Source=192.168.24.5;Initial Catalog=TesteDB;User ID=sa;Password=Cr3c15p";

    public DBConnection()
    {
        //
        // TODO: Adicionar lógica do construtor aqui
        //
    }

    public string SelectAllData ()
    {
        string result = "";
        SqlConnection connection = new SqlConnection(connectionString);
        string sql = "select * from dbo.usuario";
        SqlCommand command;
        SqlDataReader dataReader;

        try
        {
            connection.Open();
            command = new SqlCommand(sql, connection);
            dataReader = command.ExecuteReader();

            while(dataReader.Read())
            {
                result += string.Format("ID: {0} <br/>Nome: {1} <br/>Sobrenome: {2} <br/>", dataReader.GetValue(0), dataReader.GetValue(1), dataReader.GetValue(2));
            }

            dataReader.Close();
            command.Dispose();
            connection.Close();
        }
        catch(Exception ex)
        {
            return "Failed";
        }

        return result;
    }
}