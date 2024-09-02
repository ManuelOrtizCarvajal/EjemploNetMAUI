using MauiApp1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp1.Services
{
    public class CharacterService
    {
        List<Character> characterList = new();
        HttpClient httpClient;

        public CharacterService()
        {
            this.httpClient = new HttpClient();
            characterList = new List<Character>();
        }

        public async Task<List<Character>> GetCharacters() 
        {
            var response = await httpClient.GetAsync("https://api.api-onepiece.com/v2/characters/en");
            if (response.IsSuccessStatusCode) 
            {
                characterList = await response.Content.ReadFromJsonAsync<List<Character>>();
            }

            return characterList;
        }
    }
}
