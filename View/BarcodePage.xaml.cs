
using CommunityToolkit.Maui.Views;

namespace MauiApp1.View;

public partial class BarcodePage : ContentPage
{
	public BarcodePage()
	{
		InitializeComponent();
	}

	private void MyCamera_MediaCaptured(object sender, MediaCapturedEventArgs e)
	{
		if (Dispatcher.IsDispatchRequired)
		{
			Dispatcher.Dispatch(() => MyImage.Source = ImageSource.FromStream(() => e.Media));
			return;
		}
		MyImage.Source = ImageSource.FromStream(() => e.Media);
	}

	private async void ButtonSmile_Clicked(object sender, EventArgs e)
	{
		await MyCamera.CaptureImage(CancellationToken.None);
	}
}