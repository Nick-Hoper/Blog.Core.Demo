using System;

namespace Blog.Core.Model.Models
{
    /// <summary>
    /// Tibug 博文
    /// </summary>
    public class TopicDetail
    {
        public TopicDetail()
        {
            this.tdUpdatetime = DateTime.Now;
        }

        public int TopicId { get; set; }

        public string tdLogo { get; set; }

        public string tdName { get; set; }

        public string tdContent { get; set; }

        public string tdDetail { get; set; }

        public string tdSectendDetail { get; set; }

        public bool tdIsDelete { get; set; } = false;
        public int tdRead { get; set; }
        public int tdCommend { get; set; }
        public int tdGood { get; set; }
        public DateTime tdCreatetime { get; set; }
        public DateTime tdUpdatetime { get; set; }
        public int tdTop { get; set; }

        public string tdAuthor { get; set; }

        public virtual Topic Topic { get; set; }

    }
}
