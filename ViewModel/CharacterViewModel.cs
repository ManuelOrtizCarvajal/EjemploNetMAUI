using CommunityToolkit.Mvvm.ComponentModel;
using MauiApp1.Model;
using MauiApp1.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp1.ViewModel
{
    public partial class CharacterViewModel : BaseViewModel
    {
        [ObservableProperty]
        bool isRefreshing;
        public ObservableCollection<Character> Characters { get; } = new();
        CharacterService characterService;
        public Command GetCharactersCommand { get; }

        public CharacterViewModel(CharacterService characterService)
        {
            Title = "Personajes";
            this.characterService = characterService;
            GetCharactersCommand = new Command(async () => await GetCharactersAsync());
        }

        
        async Task GetCharactersAsync() 
        {
            if (IsBusy)
                return;

            try
            {
                IsBusy = true;
                var characters = await characterService.GetCharacters();

                if (Characters.Count > 0)
                    Characters.Clear();

                if (characters.Count > 0) 
                {
                    foreach (var character in characters)
                        Characters.Add(character);
                }

            }
            catch (Exception e)
            {
                Debug.WriteLine($"Se ha producido una excepción: {e.Message}");
                await Application.Current.MainPage.DisplayAlert("Error", $"Se ha producido una excepción: {e.Message}", "OK");
            }
            finally 
            {
                IsBusy = false;
                IsRefreshing = false;
            }
        } 
    }
}
