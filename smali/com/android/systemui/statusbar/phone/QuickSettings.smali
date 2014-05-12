.class public Lcom/android/systemui/statusbar/phone/QuickSettings;
.super Ljava/lang/Object;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;
    }
.end annotation


# static fields
.field public static final QS_DEFAULT:[I

.field public static final QS_DEFAULT_ALL:[I

.field private static final QS_MAPPING:[Ljava/lang/String;

.field private static final US_SKU:Z

.field private static category_color:I

.field public static final supportFP:Z


# instance fields
.field private final DEBUG:Z

.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContainerView2:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private final mDynamicSpannedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private modeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private oldConfig:Landroid/content/res/Configuration;

.field private qsContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qsContent2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qsMode:I

.field private qsOrderObserver:Landroid/database/ContentObserver;

.field private themeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/16 v4, 0x11

    const/16 v3, 0xc

    .line 775
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_card"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "settings"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "airplane"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "power_saver"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rotation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mobile_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sound_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "wifi_hotspot"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "screenshot"

    aput-object v2, v0, v1

    const-string v1, "gps"

    aput-object v1, v0, v3

    const/16 v1, 0xd

    const-string v2, "roaming"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "media_output"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "auto_sync"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "roaming_setting"

    aput-object v2, v0, v1

    const-string v1, "music_channel"

    aput-object v1, v0, v4

    const/16 v1, 0x12

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sync_all"

    aput-object v2, v0, v1

    const-string v1, "apn"

    aput-object v1, v0, v5

    const/16 v1, 0x16

    const-string v2, "do_not_disturb"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "finger_print"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "data_usage"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "mini_lite"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "nfc"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "prefer_net"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    .line 809
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 810
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    .line 868
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->US_SKU:Z

    .line 1380
    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->loadFingerPrintConfig()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    .line 1587
    const/high16 v0, -0x8000

    sput v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return-void

    .line 809
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 810
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 868
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "container"
    .parameter "container2"

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->DEBUG:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 245
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    .line 1207
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    .line 1398
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    .line 1469
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    .line 1524
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    .line 137
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;[I)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQSSettingConfiguration([I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/LayoutInflater;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshHTCTile(Landroid/view/LayoutInflater;[I)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    sput p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->notifyOverlayColorChanged(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V
    .locals 33
    .parameter
    .parameter
    .parameter "inflater"
    .parameter "parent"
    .parameter "optionalQS"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, qs_content_old:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, qs_content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string v31, "sound_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 416
    if-nez p5, :cond_1d

    const v13, 0x7f04004e

    .line 420
    .local v13, layoutID:I
    :goto_1
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 423
    .end local v13           #layoutID:I
    :cond_2
    const-string v31, "brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 425
    if-nez p5, :cond_1e

    const v13, 0x7f040026

    .line 429
    .restart local v13       #layoutID:I
    :goto_2
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 432
    .local v7, brightnessTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 433
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 436
    .end local v7           #brightnessTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_3
    const-string v31, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 438
    if-nez p5, :cond_1f

    const v13, 0x7f04002a

    .line 442
    .restart local v13       #layoutID:I
    :goto_3
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    .line 445
    .local v30, wifiTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 446
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->setTag(Ljava/lang/Object;)V

    .line 449
    .end local v13           #layoutID:I
    .end local v30           #wifiTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;
    :cond_4
    const-string v31, "power_saver"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 451
    if-nez p5, :cond_20

    const v13, 0x7f04003b

    .line 455
    .restart local v13       #layoutID:I
    :goto_4
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 458
    .local v19, powerTile:Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 459
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 462
    .end local v13           #layoutID:I
    .end local v19           #powerTile:Landroid/view/View;
    :cond_5
    const-string v31, "mobile_data"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 464
    if-nez p5, :cond_21

    const v13, 0x7f040033

    .line 468
    .restart local v13       #layoutID:I
    :goto_5
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 471
    .local v16, mobileTile:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 472
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    .end local v13           #layoutID:I
    .end local v16           #mobileTile:Landroid/view/View;
    :cond_6
    const-string v31, "bluetooth"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 477
    if-nez p5, :cond_22

    const v13, 0x7f040023

    .line 481
    .restart local v13       #layoutID:I
    :goto_6
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    .line 484
    .local v6, bluetoothTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->setTag(Ljava/lang/Object;)V

    .line 485
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 488
    .end local v6           #bluetoothTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;
    .end local v13           #layoutID:I
    :cond_7
    const-string v31, "screenshot"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 490
    if-nez p5, :cond_23

    const v13, 0x7f04004a

    .line 494
    .restart local v13       #layoutID:I
    :goto_7
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    .line 497
    .local v25, screenshotTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setStatusBarService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 498
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->setTag(Ljava/lang/Object;)V

    .line 499
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    .end local v13           #layoutID:I
    .end local v25           #screenshotTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;
    :cond_8
    const-string v31, "user_card"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 504
    const v31, 0x7f040029

    const/16 v32, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    move-object/from16 v2, p4

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v29

    .line 507
    .local v29, userTile:Landroid/view/View;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 508
    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 511
    .end local v29           #userTile:Landroid/view/View;
    :cond_9
    const-string v31, "wifi_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 513
    if-nez p5, :cond_24

    const v13, 0x7f04005d

    .line 517
    .restart local v13       #layoutID:I
    :goto_8
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 520
    .local v12, hotspotTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 521
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 524
    .end local v12           #hotspotTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_a
    const-string v31, "settings"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 526
    if-nez p5, :cond_25

    const v13, 0x7f04004c

    .line 530
    .restart local v13       #layoutID:I
    :goto_9
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 533
    .local v26, settingTile:Landroid/view/View;
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 534
    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 537
    .end local v13           #layoutID:I
    .end local v26           #settingTile:Landroid/view/View;
    :cond_b
    const-string v31, "rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 539
    if-nez p5, :cond_26

    const v13, 0x7f040046

    .line 543
    .restart local v13       #layoutID:I
    :goto_a
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;

    .line 546
    .local v24, rotateTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->setQuickSettingModel(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 550
    .end local v13           #layoutID:I
    .end local v24           #rotateTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;
    :cond_c
    const-string v31, "airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 552
    if-nez p5, :cond_27

    const v13, 0x7f040010

    .line 557
    .restart local v13       #layoutID:I
    :goto_b
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    .end local v13           #layoutID:I
    :cond_d
    const-string v31, "media_output"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 562
    if-nez p5, :cond_28

    const v13, 0x7f04002f

    .line 566
    .restart local v13       #layoutID:I
    :goto_c
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 569
    .local v14, mediaTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 570
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 573
    .end local v13           #layoutID:I
    .end local v14           #mediaTile:Landroid/view/View;
    :cond_e
    const-string v31, "auto_sync"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 575
    if-nez p5, :cond_29

    const v13, 0x7f040016

    .line 579
    .restart local v13       #layoutID:I
    :goto_d
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 582
    .local v5, autoSyncTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 583
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 586
    .end local v5           #autoSyncTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_f
    const-string v31, "roaming_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 588
    if-nez p5, :cond_2a

    const v13, 0x7f040044

    .line 592
    .restart local v13       #layoutID:I
    :goto_e
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 595
    .local v23, roamingcTile:Landroid/view/View;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 596
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 599
    .end local v13           #layoutID:I
    .end local v23           #roamingcTile:Landroid/view/View;
    :cond_10
    const-string v31, "music_channel"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 601
    if-nez p5, :cond_2b

    const v13, 0x7f040037

    .line 605
    .restart local v13       #layoutID:I
    :goto_f
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 608
    .local v17, musicChannelTile:Landroid/view/View;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 609
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 612
    .end local v13           #layoutID:I
    .end local v17           #musicChannelTile:Landroid/view/View;
    :cond_11
    const-string v31, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 614
    if-nez p5, :cond_2c

    const v13, 0x7f04003f

    .line 618
    .restart local v13       #layoutID:I
    :goto_10
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 621
    .local v21, ringtoneTile:Landroid/view/View;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 622
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 625
    .end local v13           #layoutID:I
    .end local v21           #ringtoneTile:Landroid/view/View;
    :cond_12
    const-string v31, "gps"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 627
    if-nez p5, :cond_2d

    const v13, 0x7f040020

    .line 631
    .restart local v13       #layoutID:I
    :goto_11
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 634
    .local v11, gpsTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 635
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 638
    .end local v11           #gpsTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_13
    const-string v31, "roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 640
    if-nez p5, :cond_2e

    const v13, 0x7f040042

    .line 644
    .restart local v13       #layoutID:I
    :goto_12
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 647
    .local v22, roamingTile:Landroid/view/View;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 648
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 651
    .end local v13           #layoutID:I
    .end local v22           #roamingTile:Landroid/view/View;
    :cond_14
    const-string v31, "timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 653
    if-nez p5, :cond_2f

    const v13, 0x7f040054

    .line 657
    .restart local v13       #layoutID:I
    :goto_13
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v28

    .line 660
    .local v28, timeoutTile:Landroid/view/View;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 661
    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 664
    .end local v13           #layoutID:I
    .end local v28           #timeoutTile:Landroid/view/View;
    :cond_15
    const-string v31, "sync_all"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 666
    if-nez p5, :cond_30

    const v13, 0x7f040051

    .line 670
    .restart local v13       #layoutID:I
    :goto_14
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    .line 673
    .local v27, syncAllTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 676
    .end local v13           #layoutID:I
    .end local v27           #syncAllTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;
    :cond_16
    const-string v31, "apn"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 678
    if-nez p5, :cond_31

    const v13, 0x7f040014

    .line 682
    .restart local v13       #layoutID:I
    :goto_15
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 685
    .local v4, apnTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 686
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 689
    .end local v4           #apnTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_17
    const-string v31, "do_not_disturb"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_18

    .line 691
    if-nez p5, :cond_32

    const v13, 0x7f04001a

    .line 695
    .restart local v13       #layoutID:I
    :goto_16
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 698
    .local v9, dndTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 699
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 702
    .end local v9           #dndTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_18
    const-string v31, "finger_print"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 704
    if-nez p5, :cond_33

    const v13, 0x7f04001d

    .line 708
    .restart local v13       #layoutID:I
    :goto_17
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 711
    .local v10, fingerPTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 712
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 715
    .end local v10           #fingerPTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_19
    const-string v31, "data_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 717
    if-nez p5, :cond_34

    const v13, 0x7f040056

    .line 721
    .restart local v13       #layoutID:I
    :goto_18
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 724
    .local v8, dataUsageTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 725
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 728
    .end local v8           #dataUsageTile:Landroid/view/View;
    .end local v13           #layoutID:I
    :cond_1a
    const-string v31, "mini_lite"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 730
    if-nez p5, :cond_35

    const v13, 0x7f040031

    .line 734
    .restart local v13       #layoutID:I
    :goto_19
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 737
    .local v15, miniLiteTile:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 738
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 741
    .end local v13           #layoutID:I
    .end local v15           #miniLiteTile:Landroid/view/View;
    :cond_1b
    const-string v31, "nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 743
    if-nez p5, :cond_36

    const v13, 0x7f040039

    .line 747
    .restart local v13       #layoutID:I
    :goto_1a
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 750
    .local v18, nfcTile:Landroid/view/View;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 751
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 754
    .end local v13           #layoutID:I
    .end local v18           #nfcTile:Landroid/view/View;
    :cond_1c
    const-string v31, "prefer_net"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 756
    if-nez p5, :cond_37

    const v13, 0x7f04003d

    .line 760
    .restart local v13       #layoutID:I
    :goto_1b
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v13, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 763
    .local v20, preferNetTile:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 764
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 416
    .end local v13           #layoutID:I
    .end local v20           #preferNetTile:Landroid/view/View;
    :cond_1d
    const v13, 0x7f04004f

    goto/16 :goto_1

    .line 425
    :cond_1e
    const v13, 0x7f040027

    goto/16 :goto_2

    .line 438
    :cond_1f
    const v13, 0x7f04002b

    goto/16 :goto_3

    .line 451
    :cond_20
    const v13, 0x7f04003c

    goto/16 :goto_4

    .line 464
    :cond_21
    const v13, 0x7f040034

    goto/16 :goto_5

    .line 477
    :cond_22
    const v13, 0x7f040024

    goto/16 :goto_6

    .line 490
    :cond_23
    const v13, 0x7f04004b

    goto/16 :goto_7

    .line 513
    :cond_24
    const v13, 0x7f04005e

    goto/16 :goto_8

    .line 526
    :cond_25
    const v13, 0x7f04004d

    goto/16 :goto_9

    .line 539
    :cond_26
    const v13, 0x7f040047

    goto/16 :goto_a

    .line 552
    :cond_27
    const v13, 0x7f040011

    goto/16 :goto_b

    .line 562
    :cond_28
    const v13, 0x7f040030

    goto/16 :goto_c

    .line 575
    :cond_29
    const v13, 0x7f040017

    goto/16 :goto_d

    .line 588
    :cond_2a
    const v13, 0x7f040045

    goto/16 :goto_e

    .line 601
    :cond_2b
    const v13, 0x7f040038

    goto/16 :goto_f

    .line 614
    :cond_2c
    const v13, 0x7f040040

    goto/16 :goto_10

    .line 627
    :cond_2d
    const v13, 0x7f040021

    goto/16 :goto_11

    .line 640
    :cond_2e
    const v13, 0x7f040043

    goto/16 :goto_12

    .line 653
    :cond_2f
    const v13, 0x7f040055

    goto/16 :goto_13

    .line 666
    :cond_30
    const v13, 0x7f040052

    goto/16 :goto_14

    .line 678
    :cond_31
    const v13, 0x7f040015

    goto/16 :goto_15

    .line 691
    :cond_32
    const v13, 0x7f04001b

    goto/16 :goto_16

    .line 704
    :cond_33
    const v13, 0x7f04001e

    goto/16 :goto_17

    .line 717
    :cond_34
    const v13, 0x7f040057

    goto/16 :goto_18

    .line 730
    :cond_35
    const v13, 0x7f040032

    goto/16 :goto_19

    .line 743
    :cond_36
    const v13, 0x7f04003a

    goto/16 :goto_1a

    .line 756
    :cond_37
    const v13, 0x7f04003e

    goto/16 :goto_1b
.end method

.method public static containsValidValue([II)Z
    .locals 4
    .parameter "list"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1020
    const/16 v3, 0x17

    if-ne p1, v3, :cond_1

    .line 1021
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    .line 1031
    :cond_0
    :goto_0
    return v2

    .line 1023
    :cond_1
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    .line 1026
    const/4 v0, 0x0

    .local v0, loop:I
    array-length v1, p0

    .local v1, size:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1028
    aget v3, p0, v0

    if-ne v3, p1, :cond_2

    .line 1029
    const/4 v2, 0x1

    goto :goto_0

    .line 1026
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getConvertList(Ljava/lang/String;Ljava/lang/String;[I)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1100
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1101
    :cond_0
    const/4 v0, 0x0

    .line 1127
    :cond_1
    :goto_0
    return-object v0

    .line 1103
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    :try_start_0
    const-string v1, "\\["

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1110
    const/4 v1, 0x0

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    .line 1112
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1115
    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->containsValidValue([II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1116
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1119
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!convert visible content list fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getQSAvailableList()[I
    .locals 3

    .prologue
    .line 1074
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 1076
    if-nez v0, :cond_3

    .line 1077
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    .line 1082
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1083
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    .line 1085
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1088
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 1091
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x17

    aput v2, v0, v1

    .line 1094
    :cond_2
    return-object v0

    .line 1079
    :cond_3
    const-string v1, "quick_setting_available_items"

    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static getQSItemInfo(Landroid/content/res/Resources;I)Landroid/util/Pair;
    .locals 5
    .parameter "resource"
    .parameter "qs_index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 1253
    :cond_0
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "default"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1375
    :goto_0
    return-object v2

    .line 1255
    :cond_1
    const-string v1, "default"

    .line 1257
    .local v1, itemName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1260
    .local v0, itemIcon:I
    packed-switch p1, :pswitch_data_0

    .line 1375
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1263
    :pswitch_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->getQSIconID()I

    move-result v0

    .line 1265
    goto :goto_1

    .line 1267
    :pswitch_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1268
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->getQSIconID()I

    move-result v0

    .line 1269
    goto :goto_1

    .line 1271
    :pswitch_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1272
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getQSIconID()I

    move-result v0

    .line 1273
    goto :goto_1

    .line 1275
    :pswitch_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1276
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->getQSIconID()I

    move-result v0

    .line 1277
    goto :goto_1

    .line 1279
    :pswitch_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->getQSIconID()I

    move-result v0

    .line 1281
    goto :goto_1

    .line 1283
    :pswitch_5
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1284
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->getQSIconID()I

    move-result v0

    .line 1285
    goto :goto_1

    .line 1287
    :pswitch_6
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->getQSIconID()I

    move-result v0

    .line 1289
    goto :goto_1

    .line 1291
    :pswitch_7
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->getQSIconID()I

    move-result v0

    .line 1293
    goto :goto_1

    .line 1295
    :pswitch_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1296
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->getQSIconID()I

    move-result v0

    .line 1297
    goto :goto_1

    .line 1299
    :pswitch_9
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1300
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->getQSIconID()I

    move-result v0

    .line 1301
    goto :goto_1

    .line 1303
    :pswitch_a
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1304
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getQSIconID()I

    move-result v0

    .line 1305
    goto :goto_1

    .line 1307
    :pswitch_b
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->getQSIconID()I

    move-result v0

    .line 1309
    goto :goto_1

    .line 1311
    :pswitch_c
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getQSIconID()I

    move-result v0

    .line 1313
    goto :goto_1

    .line 1315
    :pswitch_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1316
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getQSIconID()I

    move-result v0

    .line 1317
    goto/16 :goto_1

    .line 1319
    :pswitch_e
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMediaOutput;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1320
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMediaOutput;->getQSIconID()I

    move-result v0

    .line 1321
    goto/16 :goto_1

    .line 1323
    :pswitch_f
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->getQSIconID()I

    move-result v0

    .line 1325
    goto/16 :goto_1

    .line 1327
    :pswitch_10
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1328
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->getQSIconID()I

    move-result v0

    .line 1329
    goto/16 :goto_1

    .line 1331
    :pswitch_11
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMusicChannel;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1332
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMusicChannel;->getQSIconID()I

    move-result v0

    .line 1333
    goto/16 :goto_1

    .line 1335
    :pswitch_12
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1336
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->getQSIconID()I

    move-result v0

    .line 1337
    goto/16 :goto_1

    .line 1339
    :pswitch_13
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->getQSIconID()I

    move-result v0

    .line 1341
    goto/16 :goto_1

    .line 1343
    :pswitch_14
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1344
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->getQSIconID()I

    move-result v0

    .line 1345
    goto/16 :goto_1

    .line 1347
    :pswitch_15
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1348
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getQSIconID()I

    move-result v0

    .line 1349
    goto/16 :goto_1

    .line 1351
    :pswitch_16
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->getQSIconID()I

    move-result v0

    .line 1353
    goto/16 :goto_1

    .line 1355
    :pswitch_17
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->getQSIconID()I

    move-result v0

    .line 1357
    goto/16 :goto_1

    .line 1359
    :pswitch_18
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUsage;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1360
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUsage;->getQSIconID()I

    move-result v0

    .line 1361
    goto/16 :goto_1

    .line 1363
    :pswitch_19
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1364
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getQSIconID()I

    move-result v0

    .line 1365
    goto/16 :goto_1

    .line 1367
    :pswitch_1a
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->getQSIconID()I

    move-result v0

    .line 1369
    goto/16 :goto_1

    .line 1371
    :pswitch_1b
    invoke-static {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1372
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->getQSIconID()I

    move-result v0

    goto/16 :goto_1

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method private getThemeOverlayColor(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v0, -0x8000

    .line 1556
    if-nez p1, :cond_0

    .line 1567
    :goto_0
    return v0

    .line 1559
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x2010055

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1562
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 1564
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public static getThemeOverlayColor(Landroid/content/res/Resources;)I
    .locals 2
    .parameter

    .prologue
    .line 1591
    sget v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->category_color:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x2060003

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private isQSContains(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1140
    .local p1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 1141
    :cond_0
    const/4 v0, 0x0

    .line 1143
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isQSTileValidToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1148
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

    .line 1151
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSContains(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->isQSContains(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isSimpleMode()Z
    .locals 1

    .prologue
    .line 1519
    invoke-static {}, Landroid/content/res/HtcConfiguration;->isSimpleMode()Z

    move-result v0

    return v0
.end method

.method private static loadFingerPrintConfig()Z
    .locals 4

    .prologue
    .line 1387
    invoke-static {}, Lcom/htc/fingerprintapi/HtcFingerprint;->hasFingerprint()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1389
    :goto_0
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support_finger_print:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return v0

    .line 1387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final modeToString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1450
    packed-switch p0, :pswitch_data_0

    .line 1457
    const-string v0, "QS_MODE_UNKNOWN"

    :goto_0
    return-object v0

    .line 1453
    :pswitch_0
    const-string v0, "QS_MODE_NORMAL"

    goto :goto_0

    .line 1455
    :pswitch_1
    const-string v0, "QS_MODE_SIMPLE"

    goto :goto_0

    .line 1450
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyOverlayColorChanged(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 1573
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1584
    :cond_0
    return-void

    .line 1577
    :cond_1
    const/4 v1, 0x0

    .local v1, loop:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1579
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1581
    .local v0, childview:Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v3, :cond_2

    .line 1582
    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .end local v0           #childview:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onOverlayColorChanged()V

    .line 1577
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1054
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1060
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    .line 1064
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1037
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1043
    const/4 v0, 0x0

    array-length v2, p4

    :goto_1
    if-ge v0, v2, :cond_2

    .line 1044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, p4, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1047
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshHTCTile(Landroid/view/LayoutInflater;[I)V
    .locals 11
    .parameter "inflater"
    .parameter "configuration"

    .prologue
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 361
    .local v9, startTime:J
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 362
    .local v1, qs_content_old:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 364
    .local v8, qs_content_old2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshQuickSettingConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 367
    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshQuickSettingConfig2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQuickSettingConfig([I)V

    .line 373
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V

    .line 378
    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 381
    :cond_1
    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshHTCTiles:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    if-nez v0, :cond_2

    .line 401
    :goto_0
    return-void

    .line 388
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 391
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addHTCQSTile(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V

    .line 396
    if-eqz v8, :cond_3

    .line 397
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 400
    const-string v0, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshHTCTiles2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshQSSettingConfiguration([I)[I
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x17

    const/16 v1, 0x9

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 877
    const-string v3, "quick_setting_force_reset_done"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    .line 881
    :goto_0
    if-ne v3, v4, :cond_0

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/QuickSettings;->US_SKU:Z

    if-nez v5, :cond_0

    .line 883
    const-string v5, "quick_setting_force_reset_done"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 884
    const-string v5, "quick_setting_items_order"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 885
    const-string v5, "quick_setting_items_order_invisible"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 887
    const-string v5, "QuickSettings"

    const-string v6, "initialQSConfiguration(content):force reset the visible/invisible as null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    const-string v5, "quick_setting_items_order"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 894
    if-nez v5, :cond_a

    .line 896
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    .line 898
    if-nez v6, :cond_6

    .line 899
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 903
    :goto_1
    if-eqz v0, :cond_1

    array-length v7, v0

    if-nez v7, :cond_2

    .line 904
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 908
    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QuickSettings;->supportFP:Z

    if-ne v7, v4, :cond_3

    .line 911
    array-length v4, v0

    const/16 v7, 0xc

    if-ge v4, v7, :cond_7

    .line 913
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 914
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput v8, v0, v1

    .line 916
    const-string v1, "QuickSettings"

    const-string v2, "initialQSConfiguration(save):insert additional finger print item!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v2, "QuickSettings"

    const-string v4, "initialQSConfiguration(save)"

    const-string v6, "quick_setting_items_order"

    invoke-static {v1, v2, v4, v6, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 962
    :cond_4
    :goto_3
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialQSConfiguration(recover):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialQSConfiguration(content):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " forceReset:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " US_SKU:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->US_SKU:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-string v1, "QuickSettings"

    const-string v2, "--------------------------------------------------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return-object v0

    :cond_5
    move v3, v2

    .line 877
    goto/16 :goto_0

    .line 901
    :cond_6
    const-string v0, "quick_setting_items"

    sget-object v7, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    invoke-interface {v6, v0, v7}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    goto/16 :goto_1

    .line 922
    :cond_7
    if-eqz v6, :cond_8

    .line 923
    const-string v4, "quick_setting_replace_fp"

    invoke-interface {v6, v4, v1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 926
    :cond_8
    array-length v4, v0

    :goto_4
    if-ge v2, v4, :cond_3

    .line 928
    aget v6, v0, v2

    if-ne v6, v1, :cond_9

    .line 930
    const-string v1, "QuickSettings"

    const-string v4, "initialQSConfiguration(save):replace one item with finger print item!"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    aput v8, v0, v2

    goto/16 :goto_2

    .line 926
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 945
    :cond_a
    :try_start_0
    const-string v0, "\\["

    const-string v1, ""

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\]"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 947
    array-length v0, v4

    new-array v0, v0, [I

    .line 950
    array-length v6, v4

    move v1, v2

    :goto_5
    if-ge v1, v6, :cond_4

    .line 951
    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 953
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 956
    new-array v0, v2, [I

    .line 958
    const-string v2, "QuickSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!recover content list fail:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private refreshQuickSettingConfig([I)V
    .locals 9
    .parameter "configuration"

    .prologue
    .line 815
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 818
    .local v3, qs_acc:[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    .line 821
    if-nez p1, :cond_2

    .line 823
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    .line 825
    .local v4, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-nez v4, :cond_1

    .line 826
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    .line 833
    .end local v4           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    array-length v0, v6

    .line 836
    .local v0, MAX_MAPPING:I
    const/4 v2, 0x0

    .local v2, loop:I
    array-length v5, v3

    .local v5, size:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 838
    aget v1, v3, v2

    .line 840
    .local v1, itemIndex:I
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 841
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_MAPPING:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 828
    .end local v0           #MAX_MAPPING:I
    .end local v1           #itemIndex:I
    .end local v2           #loop:I
    .end local v5           #size:I
    .restart local v4       #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    const-string v6, "quick_setting_items"

    sget-object v7, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT:[I

    invoke-interface {v4, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    goto :goto_0

    .line 831
    .end local v4           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_2
    move-object v3, p1

    goto :goto_0

    .line 844
    .restart local v0       #MAX_MAPPING:I
    .restart local v2       #loop:I
    .restart local v5       #size:I
    :cond_3
    const-string v6, "QuickSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshQuickSettingConfig:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    sget-boolean v6, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    if-nez v6, :cond_4

    .line 865
    :goto_2
    return-void

    .line 851
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    .line 854
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 857
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "user_card"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 858
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 864
    :cond_6
    const-string v6, "QuickSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshQuickSettingConfig2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 854
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private removeInvalidQSItem([I)[I
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 973
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 977
    :cond_0
    const-string v0, "QuickSettings"

    const-string v1, "!!!!!unexpect condition for null content/reader"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :goto_0
    return-object p1

    .line 981
    :cond_1
    const-string v3, "quick_setting_available_items"

    sget-object v4, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    invoke-interface {v0, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v4

    .line 986
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 989
    array-length v6, p1

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v6, :cond_3

    .line 991
    aget v7, p1, v3

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->containsValidValue([II)Z

    move-result v7

    if-ne v7, v1, :cond_2

    .line 992
    aget v7, p1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 994
    goto :goto_2

    .line 998
    :cond_3
    if-ne v0, v1, :cond_5

    .line 1000
    const-string v0, "QuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInvalidQSItem(old):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v0, "QuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInvalidQSItem(all):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p1, v0, [I

    .line 1007
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_4

    .line 1008
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    .line 1007
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1010
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v1, "QuickSettings"

    const-string v2, "removeInvalidQSItem(save)"

    const-string v3, "quick_setting_items_order"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 1013
    :cond_5
    const-string v0, "QuickSettings"

    const-string v1, "--------------------------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private repositionQuickSettingTile(Landroid/view/ViewGroup;Ljava/util/ArrayList;Z)V
    .locals 12
    .parameter "containerView"
    .parameter
    .parameter "autoInsert"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, qs_content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    if-nez p2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 283
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 285
    const-string v7, "QuickSettings"

    const-string v8, "------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:clear all"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v7, "QuickSettings"

    const-string v8, "------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v2, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;>;"
    const-string v7, "QuickSettings"

    const-string v8, "---------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:move to temp"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v7, "QuickSettings"

    const-string v8, "---------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v3, 0x0

    .local v3, loop:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .local v5, size:I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 301
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 303
    .local v6, tileView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    if-eqz v6, :cond_3

    .line 305
    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v7, "QuickSettings"

    const-string v8, "%2d:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    .end local v6           #tileView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 312
    const-string v7, "QuickSettings"

    const-string v8, "--------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:back to container"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v7, "QuickSettings"

    const-string v8, "--------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_6

    .line 319
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 321
    .restart local v6       #tileView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    if-eqz v6, :cond_5

    .line 323
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 324
    const-string v7, "QuickSettings"

    const-string v8, "%2d:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 328
    .end local v6           #tileView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 331
    .local v0, count:I
    const/4 v7, 0x1

    if-ne p3, v7, :cond_8

    if-eqz v0, :cond_8

    const/4 v7, 0x5

    if-ge v0, v7, :cond_8

    .line 333
    const-string v7, "QuickSettings"

    const-string v8, "----------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v7, "QuickSettings"

    const-string v8, "repositionQuickSettingTile:auto insert process"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v7, "QuickSettings"

    const-string v8, "----------------------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v7, "default"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 340
    .local v1, dummyView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    if-nez v1, :cond_7

    .line 341
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04001c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #dummyView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 345
    .restart local v1       #dummyView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_7
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x1

    rsub-int/lit8 v9, v0, 0x5

    int-to-float v9, v9

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 351
    .local v4, lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    .end local v1           #dummyView:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .end local v4           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private setupQuickSettings()V
    .locals 5

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 193
    .local v0, qsInitialList:[I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshQSSettingConfiguration([I)[I

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->removeInvalidQSItem([I)[I

    move-result-object v0

    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->refreshHTCTile(Landroid/view/LayoutInflater;[I)V

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "quick_setting_items_order"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    const-string v2, "QuickSettings"

    const-string v3, "setupQuickSettings:registerOrderObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3
    .parameter "intent"
    .parameter "onlyProvisioned"

    .prologue
    .line 225
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 228
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/content/HtcIfIntent;->setHtcIntentFlag(I)Landroid/content/Intent;

    .line 235
    const/high16 v0, 0x1400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanelsDelay(ILjava/lang/String;)V

    .line 242
    const-string v0, "QuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSettingsActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addQSModeListener(Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;)V
    .locals 1
    .parameter "qsListener"

    .prologue
    .line 1474
    if-nez p1, :cond_1

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    .line 1481
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public animateCollapseAndUnlock()V
    .locals 4

    .prologue
    .line 1195
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1204
    return-void

    .line 1197
    :catch_0
    move-exception v0

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1200
    const-string v1, "QuickSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!unlock keyguard fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLaunchEditListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1231
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    return-object v0
.end method

.method public getQuickSettingsModel()Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method public getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 146
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "phoneStatusBar"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 151
    return-void
.end method

.method setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 5
    .parameter "networkController"
    .parameter "bluetoothController"
    .parameter "batteryController"
    .parameter "locationController"
    .parameter "rotationController"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setupQuickSettings()V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "com.htc.intent.category.THEMEID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->themeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.APP_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 186
    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    .line 218
    return-void
.end method

.method public startSettingsActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 1180
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1186
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public switchQSMode(I)V
    .locals 4
    .parameter

    .prologue
    .line 1404
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    if-ne v0, p1, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    .line 1408
    const-string v0, "QuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchQSMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1414
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView2:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1421
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1423
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;->onModeChanged(I)V

    .line 1423
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1428
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_5

    .line 1431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent:Ljava/util/ArrayList;

    .line 1432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsContent2:Ljava/util/ArrayList;

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsOrderObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    .line 1437
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->qsMode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->generateContent(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto/16 :goto_0
.end method

.method updateResources()V
    .locals 7

    .prologue
    .line 248
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 251
    .local v2, r:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateResources()V

    .line 253
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 256
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_2

    .line 258
    :cond_0
    const v5, 0x7f0b000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 259
    .local v3, span:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 260
    .local v4, v:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColumnSpan(I)V

    goto :goto_0

    .line 263
    .end local v4           #v:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 264
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestLayout()V

    .line 266
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->oldConfig:Landroid/content/res/Configuration;

    .line 268
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #span:I
    :cond_2
    return-void
.end method
