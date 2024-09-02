
using MauiApp1.Model;
using MauiApp1.View;
using MauiApp1.ViewModel;

namespace MauiApp1
{
    public partial class MainPage : ContentPage
    {
        

        public MainPage(CharacterViewModel characterViewModel)
        {
            InitializeComponent();
            BindingContext = characterViewModel;
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e) 
        {
            var character = ((VisualElement)sender).BindingContext as Model.Character;

            if (character == null)
                return;

            await Shell.Current.GoToAsync(nameof(DetailsPage), true, new Dictionary<string, object>{ { "Character", character } });
        }

        private async void BarcodeButton_Clicked(object sender, EventArgs e) 
        {
            await Shell.Current.GoToAsync(nameof(BarcodePage), true);
        }

    }

}
