using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp1.Model
{
    public class Character
    {

        public int id { get; set; }
        public string name { get; set; }
        public string job { get; set; }
        public string birthday { get; set; }
        public string size { get; set; }
        public string age { get; set; }
        public string bounty { get; set; }
        public string status { get; set; }
        public crew? crew { get; set; } = null;
        public fruit? fruit { get; set; } = null;

    }
}
