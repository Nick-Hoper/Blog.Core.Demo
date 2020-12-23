using Blog.Core.IRepository;
using Blog.Core.IService;
using Blog.Core.Repository;
using System;
using System.Collections.Generic;
using System.Text;

namespace Blog.Core.Service
{
    public class AdvertisementServices : IAdvertisementServices
    {
        IAdvertisementRepository dal = new AdvertisementRepository();

        public int Sum(int i, int j)
        {
            return dal.Sum(i, j);
        }
    }
}
