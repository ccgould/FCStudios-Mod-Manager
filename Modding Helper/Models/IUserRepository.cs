﻿using System.Collections.Generic;
using System.Net;

namespace Modding_Helper.Models;

internal interface IUserRepository
{
    bool Authenticator(NetworkCredential credential);
    void Add(UserModel userModel);
    void Edit(UserModel userModel);
    void Remove(int id);
    UserModel GetById(int id);
    UserModel GetByUsername(string username);
    IEnumerable<UserModel> GetAll();
}
