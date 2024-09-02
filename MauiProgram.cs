using Microsoft.Extensions.Logging;
using MauiApp1.Services;
using MauiApp1.ViewModel;
using MauiApp1.View;
using CommunityToolkit.Maui;

namespace MauiApp1
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkitCamera()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

#if DEBUG
    		builder.Logging.AddDebug();
#endif

            builder.Services.AddTransient<MainPage> ();
            builder.Services.AddSingleton<CharacterService>();
            builder.Services.AddTransient<CharacterViewModel>();
            builder.Services.AddTransient<DetailsPage>();            
            builder.Services.AddTransient<CharacterDetailsViewModel>();
            builder.Services.AddTransient<BarcodePage>();
            builder.Services.AddTransient<BarcodeViewModel>();
            return builder.Build();
        }
    }
}
