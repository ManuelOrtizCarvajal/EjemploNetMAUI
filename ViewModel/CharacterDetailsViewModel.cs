using CommunityToolkit.Mvvm.ComponentModel;
using MauiApp1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp1.ViewModel
{
    [QueryProperty(nameof(Character), "Character")]
    public partial class CharacterDetailsViewModel : BaseViewModel
    {
        [ObservableProperty]
        Character character;

        public CharacterDetailsViewModel()
        {
                
        }
    }
}
