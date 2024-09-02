; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [120 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [240 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 80
	i32 38948123, ; 1: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 40744412, ; 2: Xamarin.AndroidX.Camera.Lifecycle.dll => 0x26db5dc => 55
	i32 42244203, ; 3: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 112
	i32 67008169, ; 5: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 49
	i32 83839681, ; 7: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 105
	i32 136584136, ; 9: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 10: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 76
	i32 205061960, ; 12: System.ComponentModel => 0xc38ff48 => 89
	i32 317674968, ; 13: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 14: Xamarin.AndroidX.Activity.dll => 0x13031348 => 50
	i32 321963286, ; 15: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 16: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 65
	i32 379916513, ; 17: System.Threading.Thread.dll => 0x16a510e1 => 112
	i32 385762202, ; 18: System.Memory.dll => 0x16fe439a => 96
	i32 395744057, ; 19: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 20: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 21: System.Collections => 0x1a61054f => 86
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 469710990, ; 23: System.dll => 0x1bff388e => 115
	i32 489220957, ; 24: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 25: System.ObjectModel => 0x1dbae811 => 102
	i32 513247710, ; 26: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 44
	i32 538707440, ; 27: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 28: Microsoft.Extensions.Logging => 0x20216150 => 41
	i32 627609679, ; 29: Xamarin.AndroidX.CustomView => 0x2568904f => 62
	i32 627931235, ; 30: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 31: System.Text.Encodings.Web.dll => 0x27787397 => 109
	i32 672442732, ; 32: System.Collections.Concurrent => 0x2814a96c => 84
	i32 713568204, ; 33: MauiApp1.dll => 0x2a882fcc => 83
	i32 722857257, ; 34: System.Runtime.Loader.dll => 0x2b15ed29 => 106
	i32 759454413, ; 35: System.Net.Requests => 0x2d445acd => 100
	i32 775507847, ; 36: System.IO.Compression => 0x2e394f87 => 93
	i32 777317022, ; 37: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 38: Microsoft.Extensions.Options => 0x2f0980eb => 43
	i32 823281589, ; 39: System.Private.Uri.dll => 0x311247b5 => 103
	i32 830298997, ; 40: System.IO.Compression.Brotli => 0x317d5b75 => 92
	i32 869139383, ; 41: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 878954865, ; 42: System.Net.Http.Json => 0x3463c971 => 97
	i32 880668424, ; 43: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 44: System.ComponentModel.Primitives.dll => 0x35e25008 => 87
	i32 918734561, ; 45: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 928116545, ; 46: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 80
	i32 961460050, ; 47: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 48: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 65
	i32 990727110, ; 49: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 50: System.Collections.dll => 0x3b2c715c => 86
	i32 1012816738, ; 51: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 75
	i32 1028951442, ; 52: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 40
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1043950537, ; 54: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 55: System.Linq.Expressions.dll => 0x3e444eb4 => 94
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 67
	i32 1082857460, ; 57: System.ComponentModel.TypeConverter => 0x408b17f4 => 88
	i32 1084122840, ; 58: Xamarin.Kotlin.StdLib => 0x409e66d8 => 81
	i32 1098259244, ; 59: System => 0x41761b2c => 115
	i32 1108272742, ; 60: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 61: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 62: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 63: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 64: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 72
	i32 1214827643, ; 65: CommunityToolkit.Mvvm => 0x4868cc7b => 36
	i32 1260983243, ; 66: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 67: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1308624726, ; 68: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 69: System.Linq => 0x4eed2679 => 95
	i32 1336711579, ; 70: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 71: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 72: Xamarin.AndroidX.SavedState => 0x52114ed3 => 75
	i32 1406073936, ; 73: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 59
	i32 1430672901, ; 74: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 75: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 76: System.IO.Compression.dll => 0x57261233 => 93
	i32 1469204771, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 52
	i32 1470490898, ; 78: Microsoft.Extensions.Primitives => 0x57a5e912 => 44
	i32 1480492111, ; 79: System.IO.Compression.Brotli.dll => 0x583e844f => 92
	i32 1526286932, ; 80: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 81: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 111
	i32 1622152042, ; 82: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 69
	i32 1624863272, ; 83: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 78
	i32 1636350590, ; 84: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 61
	i32 1639515021, ; 85: System.Net.Http.dll => 0x61b9038d => 98
	i32 1639986890, ; 86: System.Text.RegularExpressions => 0x61c036ca => 111
	i32 1657153582, ; 87: System.Runtime => 0x62c6282e => 107
	i32 1658251792, ; 88: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 79
	i32 1677501392, ; 89: System.Net.Primitives.dll => 0x63fca3d0 => 99
	i32 1679769178, ; 90: System.Security.Cryptography => 0x641f3e5a => 108
	i32 1729485958, ; 91: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 58
	i32 1743415430, ; 92: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 93: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 76
	i32 1770582343, ; 94: Microsoft.Extensions.Logging.dll => 0x6988f147 => 41
	i32 1780572499, ; 95: Mono.Android.Runtime.dll => 0x6a216153 => 118
	i32 1782862114, ; 96: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 97: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1793755602, ; 98: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 99: Xamarin.AndroidX.Loader => 0x6bcd3296 => 69
	i32 1813058853, ; 100: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 81
	i32 1813201214, ; 101: Xamarin.Google.Android.Material => 0x6c13413e => 79
	i32 1818569960, ; 102: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 73
	i32 1828688058, ; 103: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 42
	i32 1853025655, ; 104: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 105: System.Linq.Expressions => 0x6ec71a65 => 94
	i32 1866818530, ; 106: Xamarin.AndroidX.Camera.Video => 0x6f4563e2 => 56
	i32 1875935024, ; 107: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 108: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 109: System.Collections.NonGeneric.dll => 0x71dc7c8b => 85
	i32 1953182387, ; 110: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 111: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 37
	i32 2003115576, ; 112: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2016668428, ; 113: CommunityToolkit.Maui.Camera.dll => 0x7833eb0c => 35
	i32 2019465201, ; 114: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 67
	i32 2045470958, ; 115: System.Private.Xml => 0x79eb68ee => 104
	i32 2055257422, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 66
	i32 2066184531, ; 117: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 118: System.Runtime.dll => 0x7bf8cdab => 107
	i32 2090596640, ; 119: System.Numerics.Vectors => 0x7c9bf920 => 101
	i32 2127167465, ; 120: System.Console => 0x7ec9ffe9 => 90
	i32 2159891885, ; 121: Microsoft.Maui => 0x80bd55ad => 47
	i32 2169148018, ; 122: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 123: Microsoft.Extensions.Options.dll => 0x820d22b3 => 43
	i32 2192057212, ; 124: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 42
	i32 2193016926, ; 125: System.ObjectModel.dll => 0x82b6c85e => 102
	i32 2201107256, ; 126: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 82
	i32 2201231467, ; 127: System.Net.Http => 0x8334206b => 98
	i32 2207618523, ; 128: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 129: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 38
	i32 2279755925, ; 130: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 74
	i32 2303942373, ; 131: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 132: System.Private.CoreLib.dll => 0x896b7878 => 116
	i32 2353062107, ; 133: System.Net.Primitives => 0x8c40e0db => 99
	i32 2366048013, ; 134: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 135: System.Xml.ReaderWriter.dll => 0x8d24e767 => 114
	i32 2371007202, ; 136: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 37
	i32 2395872292, ; 137: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2418341376, ; 138: Xamarin.AndroidX.Camera.Video.dll => 0x9024f600 => 56
	i32 2427813419, ; 139: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 140: System.Console.dll => 0x912896e5 => 90
	i32 2475788418, ; 141: Java.Interop.dll => 0x93918882 => 117
	i32 2480646305, ; 142: Microsoft.Maui.Controls => 0x93dba8a1 => 45
	i32 2503351294, ; 143: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 144: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2570120770, ; 145: System.Text.Encodings.Web => 0x9930ee42 => 109
	i32 2576534780, ; 146: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2593496499, ; 147: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 148: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 82
	i32 2617129537, ; 149: System.Private.Xml.dll => 0x9bfe3a41 => 104
	i32 2620871830, ; 150: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 61
	i32 2626831493, ; 151: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 152: System.Runtime.Loader => 0x9ec4cf01 => 106
	i32 2732626843, ; 153: Xamarin.AndroidX.Activity => 0xa2e0939b => 50
	i32 2737747696, ; 154: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 52
	i32 2740698338, ; 155: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 156: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 157: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 46
	i32 2764765095, ; 158: Microsoft.Maui.dll => 0xa4caf7a7 => 47
	i32 2778768386, ; 159: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 77
	i32 2785988530, ; 160: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 161: Microsoft.Maui.Graphics => 0xa7008e0b => 49
	i32 2810250172, ; 162: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 59
	i32 2853208004, ; 163: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 77
	i32 2861189240, ; 164: Microsoft.Maui.Essentials => 0xaa8a4878 => 48
	i32 2909740682, ; 165: System.Private.CoreLib => 0xad6f1e8a => 116
	i32 2916838712, ; 166: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 78
	i32 2919462931, ; 167: System.Numerics.Vectors.dll => 0xae037813 => 101
	i32 2959614098, ; 168: System.ComponentModel.dll => 0xb0682092 => 89
	i32 2965157864, ; 169: Xamarin.AndroidX.Camera.View => 0xb0bcb7e8 => 57
	i32 2978675010, ; 170: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 2991449226, ; 171: Xamarin.AndroidX.Camera.Core => 0xb24de48a => 54
	i32 3000842441, ; 172: Xamarin.AndroidX.Camera.View.dll => 0xb2dd38c9 => 57
	i32 3017953105, ; 173: MauiApp1 => 0xb3e24f51 => 83
	i32 3038032645, ; 174: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3047751430, ; 175: Xamarin.AndroidX.Camera.Core.dll => 0xb5a8ff06 => 54
	i32 3053864966, ; 176: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 177: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 70
	i32 3059408633, ; 178: Mono.Android.Runtime => 0xb65adef9 => 118
	i32 3059793426, ; 179: System.ComponentModel.Primitives => 0xb660be12 => 87
	i32 3178803400, ; 180: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 71
	i32 3220365878, ; 181: System.Threading => 0xbff2e236 => 113
	i32 3258312781, ; 182: Xamarin.AndroidX.CardView => 0xc235e84d => 58
	i32 3305363605, ; 183: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 184: System.Net.Requests.dll => 0xc5b097e4 => 100
	i32 3317135071, ; 185: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 62
	i32 3346324047, ; 186: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 72
	i32 3357674450, ; 187: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 188: System.Text.Json => 0xc82afec1 => 110
	i32 3362522851, ; 189: Xamarin.AndroidX.Core => 0xc86c06e3 => 60
	i32 3366347497, ; 190: Java.Interop => 0xc8a662e9 => 117
	i32 3374999561, ; 191: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 74
	i32 3381016424, ; 192: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3412610236, ; 193: CommunityToolkit.Maui.Camera => 0xcb684cbc => 35
	i32 3413944578, ; 194: Xamarin.AndroidX.Camera.Camera2.dll => 0xcb7ca902 => 53
	i32 3421910702, ; 195: Xamarin.AndroidX.Camera.Camera2 => 0xcbf636ae => 53
	i32 3428513518, ; 196: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 39
	i32 3458724246, ; 197: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 198: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 88
	i32 3476120550, ; 199: Mono.Android => 0xcf3163e6 => 119
	i32 3484440000, ; 200: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 201: System.Text.Json.dll => 0xcfbaacae => 110
	i32 3580758918, ; 202: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 203: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 204: System.Linq.dll => 0xd715a361 => 95
	i32 3641597786, ; 205: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 66
	i32 3643446276, ; 206: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 207: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 71
	i32 3657292374, ; 208: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 38
	i32 3672681054, ; 209: Mono.Android.dll => 0xdae8aa5e => 119
	i32 3676461095, ; 210: Xamarin.AndroidX.Camera.Lifecycle => 0xdb225827 => 55
	i32 3724971120, ; 211: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 70
	i32 3737834244, ; 212: System.Net.Http.Json.dll => 0xdecad304 => 97
	i32 3748608112, ; 213: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 91
	i32 3751619990, ; 214: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3792276235, ; 215: System.Collections.NonGeneric => 0xe2098b0b => 85
	i32 3823082795, ; 216: System.Security.Cryptography.dll => 0xe3df9d2b => 108
	i32 3841636137, ; 217: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 40
	i32 3849253459, ; 218: System.Runtime.InteropServices.dll => 0xe56ef253 => 105
	i32 3896106733, ; 219: System.Collections.Concurrent.dll => 0xe839deed => 84
	i32 3896760992, ; 220: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 60
	i32 3920221145, ; 221: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 222: System.Xml.ReaderWriter => 0xea213423 => 114
	i32 3931092270, ; 223: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 73
	i32 3955647286, ; 224: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 4025784931, ; 225: System.Memory => 0xeff49a63 => 96
	i32 4046471985, ; 226: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 46
	i32 4073602200, ; 227: System.Threading.dll => 0xf2ce3c98 => 113
	i32 4091086043, ; 228: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 229: Microsoft.Maui.Essentials.dll => 0xf40add04 => 48
	i32 4100113165, ; 230: System.Private.Uri => 0xf462c30d => 103
	i32 4103439459, ; 231: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 232: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 39
	i32 4150914736, ; 233: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 234: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 68
	i32 4213026141, ; 235: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 91
	i32 4249188766, ; 236: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 237: Microsoft.Maui.Controls.dll => 0xfea12dee => 45
	i32 4274623895, ; 238: CommunityToolkit.Mvvm.dll => 0xfec99597 => 36
	i32 4292120959 ; 239: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 68
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [240 x i32] [
	i32 80, ; 0
	i32 0, ; 1
	i32 55, ; 2
	i32 9, ; 3
	i32 112, ; 4
	i32 33, ; 5
	i32 49, ; 6
	i32 17, ; 7
	i32 105, ; 8
	i32 32, ; 9
	i32 25, ; 10
	i32 76, ; 11
	i32 89, ; 12
	i32 30, ; 13
	i32 50, ; 14
	i32 8, ; 15
	i32 65, ; 16
	i32 112, ; 17
	i32 96, ; 18
	i32 34, ; 19
	i32 28, ; 20
	i32 86, ; 21
	i32 64, ; 22
	i32 115, ; 23
	i32 6, ; 24
	i32 102, ; 25
	i32 44, ; 26
	i32 27, ; 27
	i32 41, ; 28
	i32 62, ; 29
	i32 19, ; 30
	i32 109, ; 31
	i32 84, ; 32
	i32 83, ; 33
	i32 106, ; 34
	i32 100, ; 35
	i32 93, ; 36
	i32 25, ; 37
	i32 43, ; 38
	i32 103, ; 39
	i32 92, ; 40
	i32 10, ; 41
	i32 97, ; 42
	i32 24, ; 43
	i32 87, ; 44
	i32 21, ; 45
	i32 80, ; 46
	i32 14, ; 47
	i32 65, ; 48
	i32 23, ; 49
	i32 86, ; 50
	i32 75, ; 51
	i32 40, ; 52
	i32 51, ; 53
	i32 4, ; 54
	i32 94, ; 55
	i32 67, ; 56
	i32 88, ; 57
	i32 81, ; 58
	i32 115, ; 59
	i32 26, ; 60
	i32 20, ; 61
	i32 16, ; 62
	i32 22, ; 63
	i32 72, ; 64
	i32 36, ; 65
	i32 2, ; 66
	i32 63, ; 67
	i32 11, ; 68
	i32 95, ; 69
	i32 31, ; 70
	i32 32, ; 71
	i32 75, ; 72
	i32 59, ; 73
	i32 0, ; 74
	i32 6, ; 75
	i32 93, ; 76
	i32 52, ; 77
	i32 44, ; 78
	i32 92, ; 79
	i32 30, ; 80
	i32 111, ; 81
	i32 69, ; 82
	i32 78, ; 83
	i32 61, ; 84
	i32 98, ; 85
	i32 111, ; 86
	i32 107, ; 87
	i32 79, ; 88
	i32 99, ; 89
	i32 108, ; 90
	i32 58, ; 91
	i32 1, ; 92
	i32 76, ; 93
	i32 41, ; 94
	i32 118, ; 95
	i32 17, ; 96
	i32 64, ; 97
	i32 9, ; 98
	i32 69, ; 99
	i32 81, ; 100
	i32 79, ; 101
	i32 73, ; 102
	i32 42, ; 103
	i32 26, ; 104
	i32 94, ; 105
	i32 56, ; 106
	i32 8, ; 107
	i32 2, ; 108
	i32 85, ; 109
	i32 13, ; 110
	i32 37, ; 111
	i32 5, ; 112
	i32 35, ; 113
	i32 67, ; 114
	i32 104, ; 115
	i32 66, ; 116
	i32 4, ; 117
	i32 107, ; 118
	i32 101, ; 119
	i32 90, ; 120
	i32 47, ; 121
	i32 12, ; 122
	i32 43, ; 123
	i32 42, ; 124
	i32 102, ; 125
	i32 82, ; 126
	i32 98, ; 127
	i32 14, ; 128
	i32 38, ; 129
	i32 74, ; 130
	i32 18, ; 131
	i32 116, ; 132
	i32 99, ; 133
	i32 12, ; 134
	i32 114, ; 135
	i32 37, ; 136
	i32 13, ; 137
	i32 56, ; 138
	i32 10, ; 139
	i32 90, ; 140
	i32 117, ; 141
	i32 45, ; 142
	i32 16, ; 143
	i32 11, ; 144
	i32 109, ; 145
	i32 15, ; 146
	i32 20, ; 147
	i32 82, ; 148
	i32 104, ; 149
	i32 61, ; 150
	i32 15, ; 151
	i32 106, ; 152
	i32 50, ; 153
	i32 52, ; 154
	i32 1, ; 155
	i32 21, ; 156
	i32 46, ; 157
	i32 47, ; 158
	i32 77, ; 159
	i32 27, ; 160
	i32 49, ; 161
	i32 59, ; 162
	i32 77, ; 163
	i32 48, ; 164
	i32 116, ; 165
	i32 78, ; 166
	i32 101, ; 167
	i32 89, ; 168
	i32 57, ; 169
	i32 63, ; 170
	i32 54, ; 171
	i32 57, ; 172
	i32 83, ; 173
	i32 34, ; 174
	i32 54, ; 175
	i32 7, ; 176
	i32 70, ; 177
	i32 118, ; 178
	i32 87, ; 179
	i32 71, ; 180
	i32 113, ; 181
	i32 58, ; 182
	i32 7, ; 183
	i32 100, ; 184
	i32 62, ; 185
	i32 72, ; 186
	i32 24, ; 187
	i32 110, ; 188
	i32 60, ; 189
	i32 117, ; 190
	i32 74, ; 191
	i32 3, ; 192
	i32 35, ; 193
	i32 53, ; 194
	i32 53, ; 195
	i32 39, ; 196
	i32 22, ; 197
	i32 88, ; 198
	i32 119, ; 199
	i32 23, ; 200
	i32 110, ; 201
	i32 31, ; 202
	i32 33, ; 203
	i32 95, ; 204
	i32 66, ; 205
	i32 28, ; 206
	i32 71, ; 207
	i32 38, ; 208
	i32 119, ; 209
	i32 55, ; 210
	i32 70, ; 211
	i32 97, ; 212
	i32 91, ; 213
	i32 3, ; 214
	i32 85, ; 215
	i32 108, ; 216
	i32 40, ; 217
	i32 105, ; 218
	i32 84, ; 219
	i32 60, ; 220
	i32 19, ; 221
	i32 114, ; 222
	i32 73, ; 223
	i32 51, ; 224
	i32 96, ; 225
	i32 46, ; 226
	i32 113, ; 227
	i32 5, ; 228
	i32 48, ; 229
	i32 103, ; 230
	i32 29, ; 231
	i32 39, ; 232
	i32 29, ; 233
	i32 68, ; 234
	i32 91, ; 235
	i32 18, ; 236
	i32 45, ; 237
	i32 36, ; 238
	i32 68 ; 239
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
