using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace UpdateDatabase
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string inputFile = args[0];



            string[] sqlFiles = new string[0];
            try
            {
                sqlFiles = File.ReadAllLines(inputFile);
            }
            catch (FileNotFoundException)
            {
                Console.WriteLine($"Error: no file called {inputFile}");
                return;
            }

            string connectionString = File.ReadAllText("secrets/connection-string.txt");
            MySqlConnection conn = new MySqlConnection(connectionString);
            conn.Open();

            foreach (string sqlFile in sqlFiles)
            {
                try
                {
                    Console.WriteLine("Running the following SQL command: " + sqlFile);
                    string sqlQuery = File.ReadAllText(sqlFile);
                    MySqlCommand cmd = new MySqlCommand(sqlQuery, conn);
                    cmd.ExecuteNonQuery();
                }
                catch (DirectoryNotFoundException)
                {
                    Console.WriteLine($"Error: no file called {sqlFile}");
                }
            }



            conn.Close();
        }
    }
}