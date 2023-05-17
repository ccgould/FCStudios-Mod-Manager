using System.Data.SqlClient;

namespace Modding_Helper.Repositories;

internal abstract class RepositoryBase
{
    private readonly string _connectionString;
    public RepositoryBase()
    {
        _connectionString = "Server=(local); Database=MVVMLoginDb; Integrated Security=true";
    }

    protected SqlConnection GetConnection()
    {
        return new SqlConnection( _connectionString );
    }
}
