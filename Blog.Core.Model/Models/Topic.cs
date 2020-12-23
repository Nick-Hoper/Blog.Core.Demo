using System;
using System.Collections.Generic;

namespace Blog.Core.Model.Models
{
    /// <summary>
    /// Tibug 类别
    /// </summary>
    public class Topic
    {
        public Topic()
        {
            this.TopicDetail = new List<TopicDetail>();
            this.tUpdatetime = DateTime.Now;
        }

        /// <summary>
        /// ID
        /// 泛型主键Tkey
        /// </summary>
        public int Id { get; set; }

    
        public string tLogo { get; set; }

        public string tName { get; set; }

        public string tDetail { get; set; }

        public string tAuthor { get; set; }

        public string tSectendDetail { get; set; }

        public bool tIsDelete { get; set; }
        public int tRead { get; set; }
        public int tCommend { get; set; }
        public int tGood { get; set; }
        public DateTime tCreatetime { get; set; }
        public DateTime tUpdatetime { get; set; }

        public virtual ICollection<TopicDetail> TopicDetail { get; set; }
    }
}
