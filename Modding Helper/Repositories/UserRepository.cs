using Modding_Helper.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Net;

namespace Modding_Helper.Repositories;

internal class UserRepository : RepositoryBase, IUserRepository
{
    public void Add(UserModel userModel)
    {
        throw new NotImplementedException();
    }

    public bool Authenticator(NetworkCredential credential)
    {
        bool validUser;
        using(var conection=GetConnection())
        using(var command=new SqlCommand())
        {
            conection.Open();
            command.Connection = conection;
            command.CommandText = "select *from [User] where username=@username and [password]=@password";
            command.Parameters.Add("@username",System.Data.SqlDbType.NVarChar).Value = credential.UserName;
            command.Parameters.Add("@password",System.Data.SqlDbType.NVarChar).Value = credential.Password;
            validUser=command.ExecuteScalar() == null ? false : true;
        }

        return validUser;
    }

    public void Edit(UserModel userModel)
    {
        throw new NotImplementedException();
    }

    public IEnumerable<UserModel> GetAll()
    {
        throw new NotImplementedException();
    }

    public UserModel GetById(int id)
    {
        throw new NotImplementedException();
    }

    public UserModel GetByUsername(string username)
    {
        UserModel user = null;
        using (var conection = GetConnection())
        using (var command = new SqlCommand())
        {
            conection.Open();
            command.Connection = conection;
            command.CommandText = "select *from [User] where username=@username";
            command.Parameters.Add("@username", System.Data.SqlDbType.NVarChar).Value = username;
            using(var reader = command.ExecuteReader())
            {
                if(reader.Read())
                {
                    user = new UserModel()
                    {
                        Id = reader[0].ToString(),
                        Username = reader[1].ToString(),
                        Password = string.Empty,
                        Name = reader[3].ToString(),
                        LastName = reader[4].ToString(),
                        Email = reader[5].ToString(),
                    };
                }
            }
        }

        return user;
    }

    public void Remove(int id)
    {
        throw new NotImplementedException();
    }
}
