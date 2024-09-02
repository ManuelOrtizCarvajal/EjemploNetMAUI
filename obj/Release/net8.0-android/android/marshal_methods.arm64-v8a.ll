; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [120 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [240 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 44
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 119
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 48
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 94
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 75
	i64 750875890346172408, ; 5: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 112
	i64 799765834175365804, ; 6: System.ComponentModel.dll => 0xb1956c9f18442ac => 89
	i64 805302231655005164, ; 7: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 63
	i64 939012430102503855, ; 9: Xamarin.AndroidX.Camera.Video => 0xd080ad47fefa1af => 56
	i64 1120440138749646132, ; 10: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 79
	i64 1369545283391376210, ; 11: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 71
	i64 1476839205573959279, ; 12: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 99
	i64 1486715745332614827, ; 13: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 45
	i64 1513467482682125403, ; 14: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 118
	i64 1537168428375924959, ; 15: System.Threading.Thread.dll => 0x15551e8a954ae0df => 112
	i64 1624659445732251991, ; 16: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 52
	i64 1628611045998245443, ; 17: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 68
	i64 1743969030606105336, ; 18: System.Memory.dll => 0x1833d297e88f2af8 => 96
	i64 1767386781656293639, ; 19: System.Private.Uri.dll => 0x188704e9f5582107 => 103
	i64 1795316252682057001, ; 20: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 51
	i64 1835311033149317475, ; 21: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 22: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 75
	i64 1881198190668717030, ; 23: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 24: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 46
	i64 1930726298510463061, ; 25: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 36
	i64 1954940598817289193, ; 26: CommunityToolkit.Maui.Camera => 0x1b21581ded7e73e9 => 35
	i64 1981742497975770890, ; 27: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 67
	i64 2165252314452558154, ; 28: Xamarin.AndroidX.Camera.Camera2.dll => 0x1e0c85820c09814a => 53
	i64 2262844636196693701, ; 29: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 63
	i64 2287834202362508563, ; 30: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 84
	i64 2329709569556905518, ; 31: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 66
	i64 2335503487726329082, ; 32: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 109
	i64 2470498323731680442, ; 33: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 59
	i64 2497223385847772520, ; 34: System.Runtime => 0x22a7eb7046413568 => 107
	i64 2547086958574651984, ; 35: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 50
	i64 2602673633151553063, ; 36: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 37: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 39
	i64 2662981627730767622, ; 38: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 39: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 40: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 79
	i64 3289520064315143713, ; 41: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 65
	i64 3311221304742556517, ; 42: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 101
	i64 3321269044039068031, ; 43: MauiApp1 => 0x2e1784994573297f => 83
	i64 3344514922410554693, ; 44: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 82
	i64 3429672777697402584, ; 45: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 48
	i64 3494946837667399002, ; 46: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 37
	i64 3522470458906976663, ; 47: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 76
	i64 3551103847008531295, ; 48: System.Private.CoreLib.dll => 0x31480e226177735f => 116
	i64 3567343442040498961, ; 49: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 50: System.Runtime.dll => 0x319037675df7e556 => 107
	i64 3638003163729360188, ; 51: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 38
	i64 3647754201059316852, ; 52: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 114
	i64 3655542548057982301, ; 53: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 37
	i64 3727469159507183293, ; 54: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 74
	i64 3869221888984012293, ; 55: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 41
	i64 3890352374528606784, ; 56: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 46
	i64 3933965368022646939, ; 57: System.Net.Requests => 0x369840a8bfadc09b => 100
	i64 3966267475168208030, ; 58: System.Memory => 0x370b03412596249e => 96
	i64 4070326265757318011, ; 59: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 60: System.Private.Xml.dll => 0x3887fb25779ae26e => 104
	i64 4120493066591692148, ; 61: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 62: System.ComponentModel => 0x39a7562737acb67e => 89
	i64 4187479170553454871, ; 63: System.Linq.Expressions => 0x3a1cea1e912fa117 => 94
	i64 4205801962323029395, ; 64: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 88
	i64 4360412976914417659, ; 65: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4725285941539738176, ; 66: Xamarin.AndroidX.Camera.Lifecycle => 0x41939687379f9240 => 55
	i64 4794310189461587505, ; 67: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 50
	i64 4795410492532947900, ; 68: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 76
	i64 4853321196694829351, ; 69: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 106
	i64 4871824391508510238, ; 70: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 71: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5290786973231294105, ; 72: System.Runtime.Loader => 0x496ca6b869b72699 => 106
	i64 5471532531798518949, ; 73: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 74: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 75: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 92
	i64 5573260873512690141, ; 76: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 108
	i64 5692067934154308417, ; 77: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 78
	i64 6200764641006662125, ; 78: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 79: System.Text.Json.dll => 0x565a67a0ffe264a7 => 110
	i64 6300676701234028427, ; 80: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 81: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 82: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 66
	i64 6471714727257221498, ; 83: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 84: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 85: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 62
	i64 6560151584539558821, ; 86: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 43
	i64 6743165466166707109, ; 87: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6894844156784520562, ; 88: System.Numerics.Vectors => 0x5faf683aead1ad72 => 101
	i64 7270811800166795866, ; 89: System.Linq => 0x64e71ccf51a90a5a => 95
	i64 7377312882064240630, ; 90: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 88
	i64 7489048572193775167, ; 91: System.ObjectModel => 0x67ee71ff6b419e3f => 102
	i64 7654504624184590948, ; 92: System.Net.Http => 0x6a3a4366801b8264 => 98
	i64 7714652370974252055, ; 93: System.Private.CoreLib => 0x6b0ff375198b9c17 => 116
	i64 7735352534559001595, ; 94: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 81
	i64 7742555799473854801, ; 95: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 96: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 52
	i64 7975724199463739455, ; 97: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8064050204834738623, ; 98: System.Collections.dll => 0x6fe942efa61731bf => 86
	i64 8083354569033831015, ; 99: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 65
	i64 8085230611270010360, ; 100: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 97
	i64 8087206902342787202, ; 101: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 91
	i64 8108129031893776750, ; 102: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 103: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 117
	i64 8185542183669246576, ; 104: System.Collections => 0x7198e33f4794aa70 => 86
	i64 8246048515196606205, ; 105: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 49
	i64 8320777595162576093, ; 106: Xamarin.AndroidX.Camera.View => 0x737957232eb1c4dd => 57
	i64 8368701292315763008, ; 107: System.Security.Cryptography => 0x7423997c6fd56140 => 108
	i64 8386351099740279196, ; 108: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 109: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 73
	i64 8563666267364444763, ; 110: System.Private.Uri => 0x76d841191140ca5b => 103
	i64 8626175481042262068, ; 111: Java.Interop => 0x77b654e585b55834 => 117
	i64 8629545377263870989, ; 112: Xamarin.AndroidX.Camera.Core.dll => 0x77c24dcca0ed640d => 54
	i64 8639588376636138208, ; 113: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 72
	i64 8677882282824630478, ; 114: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 115: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 91
	i64 9045785047181495996, ; 116: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9131857290992441898, ; 117: Xamarin.AndroidX.Camera.Core => 0x7ebadfd2d12a5a2a => 54
	i64 9312692141327339315, ; 118: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 78
	i64 9324707631942237306, ; 119: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 51
	i64 9363564275759486853, ; 120: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 121: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9659729154652888475, ; 122: System.Text.RegularExpressions => 0x860e407c9991dd9b => 111
	i64 9678050649315576968, ; 123: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 59
	i64 9702891218465930390, ; 124: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 85
	i64 9773637193738963987, ; 125: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 126: Mono.Android.dll => 0x881f890734e555e7 => 119
	i64 9956195530459977388, ; 127: Microsoft.Maui => 0x8a2b8315b36616ac => 47
	i64 10038780035334861115, ; 128: System.Net.Http.dll => 0x8b50e941206af13b => 98
	i64 10051358222726253779, ; 129: System.Private.Xml => 0x8b7d990c97ccccd3 => 104
	i64 10092835686693276772, ; 130: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 45
	i64 10143853363526200146, ; 131: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 132: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 133: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 62
	i64 10406448008575299332, ; 134: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 82
	i64 10430153318873392755, ; 135: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 60
	i64 10506226065143327199, ; 136: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10761706286639228993, ; 137: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 138: System.Net.Primitives => 0x95ac8cfb68830758 => 99
	i64 11002576679268595294, ; 139: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 42
	i64 11009005086950030778, ; 140: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 47
	i64 11103970607964515343, ; 141: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 142: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 143: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 144: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 77
	i64 11220793807500858938, ; 145: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 146: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 43
	i64 11340910727871153756, ; 147: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 61
	i64 11485890710487134646, ; 148: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 105
	i64 11518296021396496455, ; 149: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 150: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 77
	i64 11530571088791430846, ; 151: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 41
	i64 11855031688536399763, ; 152: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 11868448598187452935, ; 153: CommunityToolkit.Maui.Camera.dll => 0xa4b5331e49f22a07 => 35
	i64 12145679461940342714, ; 154: System.Text.Json => 0xa88e1f1ebcb62fba => 110
	i64 12451044538927396471, ; 155: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 64
	i64 12466513435562512481, ; 156: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 69
	i64 12475113361194491050, ; 157: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12538491095302438457, ; 158: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 58
	i64 12550732019250633519, ; 159: System.IO.Compression => 0xae2d28465e8e1b2f => 93
	i64 12760970142902902754, ; 160: Xamarin.AndroidX.Camera.Lifecycle.dll => 0xb11812bc0517dfe2 => 55
	i64 12843321153144804894, ; 161: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 44
	i64 12989346753972519995, ; 162: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13005833372463390146, ; 163: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13056519019444193772, ; 164: MauiApp1.dll => 0xb53212df2d1a49ec => 83
	i64 13343850469010654401, ; 165: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 118
	i64 13381594904270902445, ; 166: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13454009404024712428, ; 167: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 80
	i64 13465488254036897740, ; 168: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 81
	i64 13540124433173649601, ; 169: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13572454107664307259, ; 170: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 74
	i64 13717397318615465333, ; 171: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 87
	i64 13881769479078963060, ; 172: System.Console.dll => 0xc0a5f3cade5c6774 => 90
	i64 13959074834287824816, ; 173: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 64
	i64 14124974489674258913, ; 174: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 58
	i64 14125464355221830302, ; 175: System.Threading.dll => 0xc407bafdbc707a9e => 113
	i64 14316535876961222820, ; 176: Xamarin.AndroidX.Camera.Camera2 => 0xc6ae8d872068c0a4 => 53
	i64 14349907877893689639, ; 177: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14461014870687870182, ; 178: System.Net.Requests.dll => 0xc8afd8683afdece6 => 100
	i64 14464374589798375073, ; 179: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 180: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14550104935177758553, ; 181: Xamarin.AndroidX.Camera.Video.dll => 0xc9ec5b5949eda759 => 56
	i64 14551742072151931844, ; 182: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 109
	i64 14610046442689856844, ; 183: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14669215534098758659, ; 184: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 39
	i64 14705122255218365489, ; 185: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 186: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 187: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14792063746108907174, ; 188: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 80
	i64 14852515768018889994, ; 189: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 61
	i64 14904040806490515477, ; 190: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 191: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 40
	i64 14987728460634540364, ; 192: System.IO.Compression.dll => 0xcfff1ba06622494c => 93
	i64 15024878362326791334, ; 193: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 97
	i64 15076659072870671916, ; 194: System.ObjectModel.dll => 0xd13b0d8c1620662c => 102
	i64 15111608613780139878, ; 195: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 196: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 92
	i64 15133485256822086103, ; 197: System.Linq.dll => 0xd204f0a9127dd9d7 => 95
	i64 15203009853192377507, ; 198: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 199: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 38
	i64 15370334346939861994, ; 200: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 60
	i64 15391712275433856905, ; 201: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 40
	i64 15527772828719725935, ; 202: System.Console => 0xd77dbb1e38cd3d6f => 90
	i64 15536481058354060254, ; 203: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 204: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 68
	i64 15609085926864131306, ; 205: System.dll => 0xd89e9cf3334914ea => 115
	i64 15661133872274321916, ; 206: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 114
	i64 15750144475371186037, ; 207: Xamarin.AndroidX.Camera.View.dll => 0xda93c0f3d794a775 => 57
	i64 15783653065526199428, ; 208: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 16056281320585338352, ; 209: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 210: System => 0xe03056ea4e39aa26 => 115
	i64 16288847719894691167, ; 211: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 212: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 42
	i64 16648892297579399389, ; 213: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 36
	i64 16649148416072044166, ; 214: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 49
	i64 16677317093839702854, ; 215: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 73
	i64 16803648858859583026, ; 216: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16890310621557459193, ; 217: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 111
	i64 16942731696432749159, ; 218: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 219: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 71
	i64 17008137082415910100, ; 220: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 85
	i64 17031351772568316411, ; 221: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 70
	i64 17062143951396181894, ; 222: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 87
	i64 17203614576212522419, ; 223: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17310278548634113468, ; 224: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17342750010158924305, ; 225: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17514990004910432069, ; 226: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 227: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17704177640604968747, ; 228: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 69
	i64 17710060891934109755, ; 229: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 67
	i64 17712670374920797664, ; 230: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 105
	i64 17827813215687577648, ; 231: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 232: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 233: System.Threading => 0xfa28e87b91334681 => 113
	i64 18121036031235206392, ; 234: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 70
	i64 18245806341561545090, ; 235: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 84
	i64 18305135509493619199, ; 236: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 72
	i64 18324163916253801303, ; 237: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 238: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786 ; 239: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [240 x i32] [
	i32 44, ; 0
	i32 119, ; 1
	i32 48, ; 2
	i32 94, ; 3
	i32 75, ; 4
	i32 112, ; 5
	i32 89, ; 6
	i32 12, ; 7
	i32 63, ; 8
	i32 56, ; 9
	i32 79, ; 10
	i32 71, ; 11
	i32 99, ; 12
	i32 45, ; 13
	i32 118, ; 14
	i32 112, ; 15
	i32 52, ; 16
	i32 68, ; 17
	i32 96, ; 18
	i32 103, ; 19
	i32 51, ; 20
	i32 6, ; 21
	i32 75, ; 22
	i32 28, ; 23
	i32 46, ; 24
	i32 36, ; 25
	i32 35, ; 26
	i32 67, ; 27
	i32 53, ; 28
	i32 63, ; 29
	i32 84, ; 30
	i32 66, ; 31
	i32 109, ; 32
	i32 59, ; 33
	i32 107, ; 34
	i32 50, ; 35
	i32 27, ; 36
	i32 39, ; 37
	i32 2, ; 38
	i32 7, ; 39
	i32 79, ; 40
	i32 65, ; 41
	i32 101, ; 42
	i32 83, ; 43
	i32 82, ; 44
	i32 48, ; 45
	i32 37, ; 46
	i32 76, ; 47
	i32 116, ; 48
	i32 22, ; 49
	i32 107, ; 50
	i32 38, ; 51
	i32 114, ; 52
	i32 37, ; 53
	i32 74, ; 54
	i32 41, ; 55
	i32 46, ; 56
	i32 100, ; 57
	i32 96, ; 58
	i32 3, ; 59
	i32 104, ; 60
	i32 33, ; 61
	i32 89, ; 62
	i32 94, ; 63
	i32 88, ; 64
	i32 28, ; 65
	i32 55, ; 66
	i32 50, ; 67
	i32 76, ; 68
	i32 106, ; 69
	i32 18, ; 70
	i32 26, ; 71
	i32 106, ; 72
	i32 26, ; 73
	i32 29, ; 74
	i32 92, ; 75
	i32 108, ; 76
	i32 78, ; 77
	i32 23, ; 78
	i32 110, ; 79
	i32 6, ; 80
	i32 34, ; 81
	i32 66, ; 82
	i32 7, ; 83
	i32 11, ; 84
	i32 62, ; 85
	i32 43, ; 86
	i32 19, ; 87
	i32 101, ; 88
	i32 95, ; 89
	i32 88, ; 90
	i32 102, ; 91
	i32 98, ; 92
	i32 116, ; 93
	i32 81, ; 94
	i32 14, ; 95
	i32 52, ; 96
	i32 25, ; 97
	i32 86, ; 98
	i32 65, ; 99
	i32 97, ; 100
	i32 91, ; 101
	i32 16, ; 102
	i32 117, ; 103
	i32 86, ; 104
	i32 49, ; 105
	i32 57, ; 106
	i32 108, ; 107
	i32 31, ; 108
	i32 73, ; 109
	i32 103, ; 110
	i32 117, ; 111
	i32 54, ; 112
	i32 72, ; 113
	i32 21, ; 114
	i32 91, ; 115
	i32 31, ; 116
	i32 54, ; 117
	i32 78, ; 118
	i32 51, ; 119
	i32 5, ; 120
	i32 29, ; 121
	i32 111, ; 122
	i32 59, ; 123
	i32 85, ; 124
	i32 1, ; 125
	i32 119, ; 126
	i32 47, ; 127
	i32 98, ; 128
	i32 104, ; 129
	i32 45, ; 130
	i32 3, ; 131
	i32 19, ; 132
	i32 62, ; 133
	i32 82, ; 134
	i32 60, ; 135
	i32 1, ; 136
	i32 33, ; 137
	i32 99, ; 138
	i32 42, ; 139
	i32 47, ; 140
	i32 12, ; 141
	i32 27, ; 142
	i32 8, ; 143
	i32 77, ; 144
	i32 15, ; 145
	i32 43, ; 146
	i32 61, ; 147
	i32 105, ; 148
	i32 13, ; 149
	i32 77, ; 150
	i32 41, ; 151
	i32 30, ; 152
	i32 35, ; 153
	i32 110, ; 154
	i32 64, ; 155
	i32 69, ; 156
	i32 34, ; 157
	i32 58, ; 158
	i32 93, ; 159
	i32 55, ; 160
	i32 44, ; 161
	i32 0, ; 162
	i32 21, ; 163
	i32 83, ; 164
	i32 118, ; 165
	i32 9, ; 166
	i32 80, ; 167
	i32 81, ; 168
	i32 30, ; 169
	i32 74, ; 170
	i32 87, ; 171
	i32 90, ; 172
	i32 64, ; 173
	i32 58, ; 174
	i32 113, ; 175
	i32 53, ; 176
	i32 23, ; 177
	i32 100, ; 178
	i32 24, ; 179
	i32 32, ; 180
	i32 56, ; 181
	i32 109, ; 182
	i32 2, ; 183
	i32 39, ; 184
	i32 16, ; 185
	i32 15, ; 186
	i32 32, ; 187
	i32 80, ; 188
	i32 61, ; 189
	i32 0, ; 190
	i32 40, ; 191
	i32 93, ; 192
	i32 97, ; 193
	i32 102, ; 194
	i32 17, ; 195
	i32 92, ; 196
	i32 95, ; 197
	i32 22, ; 198
	i32 38, ; 199
	i32 60, ; 200
	i32 40, ; 201
	i32 90, ; 202
	i32 4, ; 203
	i32 68, ; 204
	i32 115, ; 205
	i32 114, ; 206
	i32 57, ; 207
	i32 5, ; 208
	i32 24, ; 209
	i32 115, ; 210
	i32 18, ; 211
	i32 42, ; 212
	i32 36, ; 213
	i32 49, ; 214
	i32 73, ; 215
	i32 17, ; 216
	i32 111, ; 217
	i32 25, ; 218
	i32 71, ; 219
	i32 85, ; 220
	i32 70, ; 221
	i32 87, ; 222
	i32 20, ; 223
	i32 10, ; 224
	i32 10, ; 225
	i32 8, ; 226
	i32 20, ; 227
	i32 69, ; 228
	i32 67, ; 229
	i32 105, ; 230
	i32 11, ; 231
	i32 4, ; 232
	i32 113, ; 233
	i32 70, ; 234
	i32 84, ; 235
	i32 72, ; 236
	i32 14, ; 237
	i32 13, ; 238
	i32 9 ; 239
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
