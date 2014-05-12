.class public Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;
.super Lcom/android/systemui/statusbar/policy/NetworkController;
.source "HtcGenericNetworkController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;
    }
.end annotation


# static fields
.field static REGION:I

.field static SKU_ID:I


# instance fields
.field private final SPRINT_NET_TYPE_3G:I

.field private final SPRINT_NET_TYPE_GSM:I

.field private final SPRINT_NET_TYPE_LTE:I

.field private isHkCslIconEnabled:Z

.field final mAirplaneIconId:I

.field private mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field mDataIconId:I

.field mDataIconName:Ljava/lang/String;

.field mDataVisible:Z

.field private mDuringAnimation:Z

.field mFemtocellIconId:I

.field mFemtocellIconName:Ljava/lang/String;

.field mFemtocellVisible:Z

.field final mHandler:Landroid/os/Handler;

.field mLastDataConnected:Z

.field mLastDataIconId:I

.field mLastDataVisible:Z

.field mLastFemtocellIconId:I

.field mLastFemtocellVisible:Z

.field mLastPhoneSignalIconIdRight:I

.field mLastPhoneSignalVisible:Z

.field mLastSignalLevel:I

.field mLastSimCardIconId:I

.field mLastSimCardVisible:Z

.field mLastWifiActivity:I

.field mLastWifiLevel:I

.field mLastWifiVisible:Z

.field mLowHsdpaCategory:Z

.field private mLteLocked:Z

.field mMobileDataEnabled:Z

.field mOpNameVisible:Z

.field final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconIdRight:I

.field mPhoneSignalIconName:Ljava/lang/String;

.field mPhoneSignalIconNameRight:Ljava/lang/String;

.field mPhoneSignalVisible:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mQueryMode:Z

.field private mRilReader:Lcom/htc/customization/HtcCustomizationReader;

.field mSecondSignalStrength:Landroid/telephony/SignalStrength;

.field mSectorId:Ljava/lang/String;

.field final mSgLteMdmQscPhone:Z

.field final mSgLtePhone:Z

.field final mShow3gForEvdo:Z

.field final mShow4gForLte:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSimCardIconId:I

.field mSimCardIconName:Ljava/lang/String;

.field mSimCardVisible:Z

.field mSimulationEnabled:Z

.field mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

.field private mSprintLteTextVisible:Z

.field private mWasDormant:Z

.field mWifiActivityEnabled:Z

.field mWifiIconName:Ljava/lang/String;

.field mWifiOffload:Z

.field mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    .line 128
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->REGION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>()V

    .line 81
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 87
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    .line 88
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconIdRight:I

    .line 89
    const v14, 0x7f0204b7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneIconId:I

    .line 90
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    .line 91
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    .line 92
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalVisible:Z

    .line 95
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    .line 96
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    .line 97
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    .line 98
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    .line 99
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    .line 102
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataConnected:Z

    .line 105
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    .line 106
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    .line 107
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    .line 108
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardVisible:Z

    .line 113
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->loadSupportWifiOffload()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiOffload:Z

    .line 116
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    .line 117
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiActivity:I

    .line 120
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQueryMode:Z

    .line 124
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    .line 130
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 136
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mRilReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->show3gForEvdo()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow3gForEvdo:Z

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->show4gForLte()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    .line 147
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mOpNameVisible:Z

    .line 150
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    .line 151
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellVisible:Z

    .line 152
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    .line 153
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    .line 154
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconName:Ljava/lang/String;

    .line 155
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSectorId:Ljava/lang/String;

    .line 158
    const-string v14, "sglte2"

    const-string v15, "ro.baseband.arch"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLteMdmQscPhone:Z

    .line 159
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSgltephone()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    .line 252
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    .line 474
    new-instance v14, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1839
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isLteLocked()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    .line 1981
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SPRINT_NET_TYPE_LTE:I

    .line 1982
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SPRINT_NET_TYPE_3G:I

    .line 1983
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SPRINT_NET_TYPE_GSM:I

    .line 1984
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z

    .line 1985
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWasDormant:Z

    .line 1986
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSprintLteTextVisible:Z

    .line 275
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 278
    .local v8, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    const-string v15, "connectivity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 280
    .local v3, cm:Landroid/net/ConnectivityManager;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mHasMobileDataFeature:Z

    .line 283
    const-string v14, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v16, 0x600001e1

    invoke-virtual/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 294
    new-instance v14, Landroid/telephony/SignalStrength;

    invoke-direct {v14}, Landroid/telephony/SignalStrength;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 297
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    if-eqz v14, :cond_0

    .line 298
    const-string v14, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 299
    .local v12, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v13

    .line 300
    .local v13, wifiMessenger:Landroid/os/Messenger;
    if-eqz v13, :cond_0

    .line 301
    new-instance v10, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v10}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 302
    .local v10, wifiChannel:Lcom/android/internal/util/AsyncChannel;
    new-instance v11, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Lcom/android/internal/util/AsyncChannel;)V

    .line 327
    .local v11, wifiHandler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v14, v11, v13}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 332
    .end local v10           #wifiChannel:Lcom/android/internal/util/AsyncChannel;
    .end local v11           #wifiHandler:Landroid/os/Handler;
    .end local v12           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v13           #wifiMessenger:Landroid/os/Messenger;
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 333
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v14, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v14, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 344
    .local v7, htcFilter:Landroid/content/IntentFilter;
    const-string v14, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v14, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 349
    const-string v14, "com.htc.action.lte_lock_status_change"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 353
    :cond_2
    const-string v14, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    .line 355
    const-string v15, "DATA_ICON"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mobile data "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v14, :cond_9

    const-string v14, "enabled"

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " when reboot"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_3
    const-string v14, "com.htc.permission.APP_PLATFORM"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateAirplaneMode()V

    .line 366
    const-string v14, "ro.ril.hsdpa.category"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 367
    .local v2, category:I
    const/16 v14, 0x9

    if-le v2, v14, :cond_4

    const/16 v14, 0xb

    if-eq v2, v14, :cond_4

    const/16 v14, 0xc

    if-ne v2, v14, :cond_a

    :cond_4
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLowHsdpaCategory:Z

    .line 368
    const-string v14, "StatusBar.NetworkController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hsdpa category="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslDevice()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 372
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 373
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v14, "pre_state_of_hk_d"

    const/4 v15, -0x1

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 374
    .local v6, hkd_state:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HK D icon customization, state="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;)V

    .line 375
    const/4 v14, -0x1

    if-eq v6, v14, :cond_5

    const/4 v14, 0x1

    if-ne v6, v14, :cond_6

    .line 376
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    .line 377
    :cond_6
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 378
    .local v5, hkFilter:Landroid/content/IntentFilter;
    const-string v14, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v5, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v14, "android_secret_code"

    invoke-virtual {v5, v14}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 380
    const-string v14, "265"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v5, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 401
    .end local v5           #hkFilter:Landroid/content/IntentFilter;
    .end local v6           #hkd_state:I
    .end local v9           #sp:Landroid/content/SharedPreferences;
    :cond_7
    const/4 v14, 0x1

    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-ne v14, v15, :cond_8

    .line 402
    new-instance v14, Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->register(Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;)V

    .line 405
    :cond_8
    return-void

    .line 355
    .end local v2           #category:I
    :cond_9
    const-string v14, "disabled"

    goto/16 :goto_0

    .line 367
    .restart local v2       #category:I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimCardIcon()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateFemtocellIcon()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getQscNetworkType()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCdmaRoamingIndicator()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->dumpState()V

    return-void
.end method

.method private broadcastSignalClusterIntent()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1468
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.htc.systemui.UI_CHANGED"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1469
    const-string v0, "signal"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1470
    const-string v0, "signal_right"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1471
    const-string v3, "data_connection"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1472
    const-string v3, "wifi"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1473
    const-string v3, "sim"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1474
    const-string v0, "airplane"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    if-eqz v3, :cond_0

    const v1, 0x7f0204b7

    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1477
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1471
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1472
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1473
    goto :goto_2
.end method

.method private static varargs checkSkuId([I)Z
    .locals 6
    .parameter "ids"

    .prologue
    .line 2086
    sget v4, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    sget v5, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    if-eq v4, v5, :cond_2

    .line 2087
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 2088
    .local v2, id:I
    sget v4, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    .line 2091
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 2087
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #id:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2089
    .end local v2           #id:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2091
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v3           #len$:I
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v4

    goto :goto_1
.end method

.method private dumpIconState()V
    .locals 5

    .prologue
    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1432
    const-string v0, "dumpIcon["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconNameRight:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    if-eqz v0, :cond_5

    const-string v0, "T"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconName:Ljava/lang/String;

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    :cond_0
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    const-string v0, "StatusBar.NetworkController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return-void

    .line 1432
    :cond_1
    const-string v0, "(gone)"

    goto/16 :goto_0

    :cond_2
    const-string v0, "(gone)"

    goto/16 :goto_1

    :cond_3
    const-string v0, "(gone)"

    goto :goto_2

    :cond_4
    const-string v0, "(gone)"

    goto :goto_3

    :cond_5
    const-string v0, "F"

    goto :goto_4

    .line 1441
    :cond_6
    const-string v0, "(gone)"

    goto :goto_5
.end method

.method private dumpState()V
    .locals 4

    .prologue
    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1417
    const-string v0, "dumpState["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHtcModemLinkOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    const-string v0, "StatusBar.NetworkController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-void

    .line 1417
    :cond_0
    const-string v0, "null"

    goto/16 :goto_0

    :cond_1
    const-string v0, "null"

    goto/16 :goto_1
.end method

.method private getCallState()I
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getCallState()I

    move-result v0

    .line 1589
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneState:I

    goto :goto_0
.end method

.method private getCdmaRoamingIndicator()I
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getCdmaRoamingIndicator()I

    move-result v0

    .line 1522
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getChinaAttachIcon(I)I
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f020340

    const v1, 0x7f020333

    .line 2052
    packed-switch p1, :pswitch_data_0

    .line 2080
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-eqz v1, :cond_1

    :cond_0
    const v0, 0x7f02032f

    :cond_1
    :goto_0
    return v0

    .line 2054
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCU()Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f02033d

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2056
    goto :goto_0

    .line 2060
    :pswitch_3
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 2061
    goto :goto_0

    .line 2063
    :cond_3
    const v0, 0x7f020331

    goto :goto_0

    .line 2066
    :pswitch_4
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 2067
    goto :goto_0

    .line 2069
    :cond_5
    const v0, 0x7f02050d

    goto :goto_0

    .line 2072
    :pswitch_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCU()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2073
    const v0, 0x7f020339

    goto :goto_0

    .line 2075
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    if-eqz v0, :cond_7

    const v0, 0x7f020337

    goto :goto_0

    :cond_7
    const v0, 0x7f020346

    goto :goto_0

    .line 2052
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getCustomizationReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    return-object v0
.end method

.method private getDataActivity()I
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getDataActivity()I

    move-result v0

    .line 1579
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataActivity:I

    goto :goto_0
.end method

.method private getDataNetworkType()I
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataState()I
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getDataState()I

    move-result v0

    .line 1561
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataState:I

    goto :goto_0
.end method

.method private getMdmNetworkType()I
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getMdmNetworkType()I

    move-result v0

    .line 1747
    :goto_0
    return v0

    .line 1746
    :cond_0
    const-string v0, "ril.sglte.mdm.radio_tech"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1747
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    goto :goto_0
.end method

.method private getMdmSignalLevel()I
    .locals 1

    .prologue
    .line 1758
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSignalLevel()I

    move-result v0

    return v0
.end method

.method private getModemState()I
    .locals 2

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getModemState()I

    move-result v0

    .line 1770
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.radio.modem_state"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getNetworkCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getNetworkCountry()Ljava/lang/String;

    move-result-object v0

    .line 1533
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetworkId()I
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getNetworkId()I

    move-result v0

    .line 1500
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 1528
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetworkType()I
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getNetworkType()I

    move-result v0

    .line 1543
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataNetType:I

    goto :goto_0
.end method

.method private getPhoneType()I
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getPhoneType()I

    move-result v0

    .line 1490
    :goto_0
    return v0

    .line 1488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v0

    goto :goto_0

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_0

    .line 1490
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getQscNetworkType()I
    .locals 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getQscNetworkType()I

    move-result v0

    .line 1753
    :goto_0
    return v0

    .line 1752
    :cond_0
    const-string v0, "ril.sglte.qsc.radio_tech"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1753
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    goto :goto_0
.end method

.method private getQscSignalLevel(I)I
    .locals 1
    .parameter "qscRat"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getQscSignalLevel()I

    move-result v0

    .line 1764
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p1}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRatLevel(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1821
    packed-switch p1, :pswitch_data_0

    .line 1833
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 1823
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1829
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1821
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2124
    if-eqz p1, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2127
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2132
    :goto_0
    return-object v0

    .line 2128
    :catch_0
    move-exception v0

    .line 2129
    const-string v0, "(unknown)"

    goto :goto_0

    .line 2132
    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

.method private getRilReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mRilReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "Android_Ril"

    invoke-static {v0}, Lcom/android/systemui/CustomizationUtil;->getReaderByApp(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mRilReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mRilReader:Lcom/htc/customization/HtcCustomizationReader;

    return-object v0
.end method

.method private getSectorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSectorId()Ljava/lang/String;

    move-result-object v0

    .line 1505
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSectorId:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSignalLevel()I
    .locals 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSignalLevel()I

    move-result v0

    .line 1584
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1538
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 1495
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private getSprintDataIconId(Z)I
    .locals 8
    .parameter "isActive"

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1990
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z

    if-eqz v5, :cond_0

    .line 1991
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    .line 2031
    :goto_0
    return v3

    .line 1995
    :cond_0
    const/4 v1, 0x1

    .line 1996
    .local v1, netType:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1997
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    move v1, v3

    .line 2002
    :goto_1
    if-nez v1, :cond_3

    move v5, v4

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSprintLteTextVisible:Z

    .line 2005
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataActivity()I

    move-result v0

    .line 2006
    .local v0, activity:I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWasDormant:Z

    .line 2007
    .local v2, wasDormant:Z
    if-eqz p1, :cond_4

    if-ne v0, v7, :cond_4

    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWasDormant:Z

    .line 2008
    if-eqz p1, :cond_8

    .line 2009
    if-ne v0, v7, :cond_5

    .line 2011
    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_INACTIVE_TO_DORMANT:[I

    aget v3, v3, v1

    goto :goto_0

    .end local v0           #activity:I
    .end local v2           #wasDormant:Z
    :cond_1
    move v1, v4

    .line 1997
    goto :goto_1

    .line 2000
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    move v5, v3

    .line 2002
    goto :goto_2

    .restart local v0       #activity:I
    .restart local v2       #wasDormant:Z
    :cond_4
    move v4, v3

    .line 2007
    goto :goto_3

    .line 2013
    :cond_5
    if-eqz v2, :cond_6

    .line 2015
    const-wide/16 v3, 0x3e8

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIconLater(J)V

    .line 2016
    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_DORMANT_TO_INACTIVE:[I

    aget v3, v3, v1

    goto :goto_0

    .line 2017
    :cond_6
    if-eqz v0, :cond_7

    .line 2019
    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_ACTIVE:[I

    aget v3, v3, v1

    goto :goto_0

    .line 2022
    :cond_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_INACTIVE:[I

    aget v3, v3, v1

    goto :goto_0

    .line 2026
    :cond_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataConnected:Z

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 2028
    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_DORMANT_TO_IDLE:[I

    aget v3, v3, v1

    goto :goto_0

    .line 2031
    :cond_9
    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_IDLE:[I

    aget v3, v3, v1

    goto :goto_0
.end method

.method private getUnderSilentReset()I
    .locals 2

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getUnderSilentReset()I

    move-result v0

    .line 1598
    :goto_0
    return v0

    :cond_0
    const-string v0, "sys.under_silent_reset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCombinedService()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1457
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v2, :cond_2

    .line 1458
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasCsService()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasPsService()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1459
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private hasDataService()Z
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasPsService()Z

    move-result v0

    .line 1453
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMdmService()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1731
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasMdmService()Z

    move-result v0

    .line 1733
    :cond_0
    :goto_0
    return v0

    .line 1732
    :cond_1
    const-string v2, "ril.sglte.mdm.reg_state"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1733
    if-eq v2, v1, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private hasQscService()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1738
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasQscService()Z

    move-result v0

    .line 1740
    :cond_0
    :goto_0
    return v0

    .line 1739
    :cond_1
    const-string v2, "ril.sglte.qsc.reg_state"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1740
    if-eq v2, v1, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private hasService(I)Z
    .locals 1
    .parameter "regState"

    .prologue
    .line 1463
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVoiceService()Z
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasCsService()Z

    move-result v0

    .line 1448
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is2gOnly(I)Z
    .locals 1
    .parameter "rt"

    .prologue
    .line 1811
    packed-switch p1, :pswitch_data_0

    .line 1816
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1814
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1811
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isATT()Z
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x7

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAirplaneMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1480
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->isAirplaneMode()Z

    move-result v0

    .line 1481
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isCMCC()Z
    .locals 2

    .prologue
    .line 204
    const/16 v0, 0x1a

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCT()Z
    .locals 2

    .prologue
    .line 208
    const/16 v0, 0x1b

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCU()Z
    .locals 2

    .prologue
    .line 212
    const/16 v0, 0x1d

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 2

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChina()Z
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x3

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->REGION:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataConnected()Z
    .locals 3

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHtcModemLinkOn()Z

    move-result v0

    .line 1566
    if-eqz v0, :cond_0

    const-string v1, "DATA_ICON"

    const-string v2, "ModemLink ON!"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 1

    .prologue
    .line 1968
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1975
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1973
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1968
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0xc -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private isHkCslDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 254
    const/16 v2, 0x46

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v2, v3, :cond_0

    .line 260
    :goto_0
    return v1

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCustomizationReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 256
    .local v0, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-nez v0, :cond_1

    .line 257
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "custReader is null, return false"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "data_icon_h3l_d_enabled"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private isHtcModemLinkOn()Z
    .locals 1

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLATAM()Z
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->checkSkuId([I)Z

    move-result v0

    return v0

    :array_0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private isLteLocked()Z
    .locals 1

    .prologue
    .line 1841
    const/4 v0, 0x0

    .line 1843
    .local v0, isLteLocked:Z
    return v0
.end method

.method private isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->isRoamingGsm()Z

    move-result v0

    .line 1510
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkRoamingCdma()Z
    .locals 2

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCdmaRoamingIndicator()I

    move-result v0

    .line 1515
    .local v0, index:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOrange()Z
    .locals 2

    .prologue
    .line 172
    sget v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    const/16 v1, 0x2e

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrangeFR()Z
    .locals 2

    .prologue
    .line 176
    const/16 v0, 0x30

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSgltephone()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 241
    .local v0, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-nez v0, :cond_0

    .line 242
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "rilReader is null, return false"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return v1

    :cond_0
    const-string v2, "isSingleSimDualSignalTdscdma"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static isSprint()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->checkSkuId([I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static isTmoUS()Z
    .locals 2

    .prologue
    .line 185
    const/16 v0, 0xb

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerizon()Z
    .locals 2

    .prologue
    .line 191
    const/16 v0, 0xd

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVodafoneEU()Z
    .locals 1

    .prologue
    .line 196
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->checkSkuId([I)Z

    move-result v0

    return v0

    :array_0
    .array-data 0x4
        0x3dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadSupportWifiOffload()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1317
    const-string v2, "persist.wifi.offload"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 2137
    const-string v0, "StatusBar.NetworkController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    return-void
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 2141
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    return-void
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .locals 1
    .parameter "rt"

    .prologue
    .line 1775
    packed-switch p1, :pswitch_data_0

    .line 1806
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1777
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1779
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1781
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1783
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 1785
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 1787
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 1790
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 1792
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1794
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 1796
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 1798
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 1800
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 1802
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 1804
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 1775
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private show3gForEvdo()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCustomizationReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 218
    .local v0, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-nez v0, :cond_0

    .line 219
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "custReader is null, return false"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "show_3g_for_evdo"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private show4gForLte()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCustomizationReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 228
    .local v0, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-nez v0, :cond_0

    .line 229
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "custReader is null, return false"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "show_4g_for_lte"

    invoke-interface {v2, v3, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private updateAirplaneMode()V
    .locals 3

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isAirplaneMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    .line 638
    const-string v0, "AIRPLANE_ICON"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method private final updateDataIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1042
    .line 1043
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    .line 1047
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1048
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasDataService()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1049
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isDataConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1051
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1052
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSprintDataIconId(Z)I

    move-result v0

    move v2, v3

    .line 1179
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCallState()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 1181
    const-string v2, "DATA_ICON"

    const-string v4, "hide data icon during CDMA voice call"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1186
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-ne v2, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    if-eq v0, v1, :cond_1a

    .line 1187
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getUnderSilentReset()I

    move-result v1

    if-ne v1, v3, :cond_1a

    .line 1188
    const-string v0, "SILENT_RESET"

    const-string v1, "during silent reset, skip"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_2
    :goto_1
    return-void

    .line 1054
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataActivity()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1069
    aget v0, v2, v1

    move v2, v3

    .line 1070
    goto :goto_0

    .line 1056
    :pswitch_0
    aget v0, v2, v3

    move v2, v3

    .line 1057
    goto :goto_0

    .line 1059
    :pswitch_1
    aget v0, v2, v5

    move v2, v3

    .line 1060
    goto :goto_0

    .line 1062
    :pswitch_2
    aget v0, v2, v6

    move v2, v3

    .line 1063
    goto :goto_0

    .line 1065
    :pswitch_3
    array-length v4, v2

    if-le v4, v0, :cond_4

    :goto_2
    aget v0, v2, v0

    move v2, v3

    .line 1066
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1065
    goto :goto_2

    .line 1075
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1092
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_G:[I

    aget v0, v0, v1

    move v2, v3

    .line 1093
    goto :goto_0

    .line 1078
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_E:[I

    aget v0, v0, v1

    move v2, v3

    .line 1079
    goto :goto_0

    .line 1085
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G:[I

    aget v0, v0, v1

    move v2, v3

    .line 1086
    goto :goto_0

    .line 1088
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G_LTE:[I

    aget v0, v0, v1

    move v2, v3

    .line 1089
    goto :goto_0

    .line 1096
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v0, :cond_7

    .line 1097
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSprintDataIconId(Z)I

    move-result v0

    move v2, v3

    goto/16 :goto_0

    .line 1099
    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isChina()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getChinaAttachIcon(I)I

    move-result v0

    move v2, v3

    goto/16 :goto_0

    :cond_8
    move v0, v1

    move v2, v1

    .line 1102
    goto/16 :goto_0

    .line 1107
    :cond_9
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isChina()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasVoiceService()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getVoiceNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getChinaAttachIcon(I)I

    move-result v0

    move v2, v3

    goto/16 :goto_0

    :cond_a
    move v0, v1

    move v2, v1

    .line 1110
    goto/16 :goto_0

    .line 1116
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasCombinedService()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isDataConnected()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1117
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1118
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSprintDataIconId(Z)I

    move-result v0

    move v2, v3

    goto/16 :goto_0

    .line 1119
    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isEvdo()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCallState()I

    move-result v4

    if-ne v5, v4, :cond_d

    move v0, v1

    move v2, v1

    .line 1121
    goto/16 :goto_0

    .line 1123
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataActivity()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 1145
    aget v0, v2, v1

    move v2, v3

    .line 1146
    goto/16 :goto_0

    .line 1125
    :pswitch_8
    aget v0, v2, v3

    move v2, v3

    .line 1126
    goto/16 :goto_0

    .line 1128
    :pswitch_9
    aget v0, v2, v5

    move v2, v3

    .line 1129
    goto/16 :goto_0

    .line 1131
    :pswitch_a
    aget v0, v2, v6

    move v2, v3

    .line 1132
    goto/16 :goto_0

    .line 1135
    :pswitch_b
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1136
    aget v0, v2, v1

    move v2, v3

    goto/16 :goto_0

    .line 1138
    :cond_e
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1139
    aget v0, v2, v1

    move v2, v3

    goto/16 :goto_0

    .line 1141
    :cond_f
    array-length v4, v2

    if-le v4, v0, :cond_10

    :goto_3
    aget v0, v2, v0

    move v2, v3

    .line 1143
    goto/16 :goto_0

    :cond_10
    move v0, v1

    .line 1141
    goto :goto_3

    .line 1150
    :cond_11
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 1166
    :pswitch_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-eqz v0, :cond_17

    :cond_12
    const v0, 0x7f0201df

    :goto_4
    move v2, v3

    .line 1168
    goto/16 :goto_0

    .line 1153
    :pswitch_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-eqz v0, :cond_14

    :cond_13
    const v0, 0x7f0204c1

    :goto_5
    move v2, v3

    .line 1155
    goto/16 :goto_0

    .line 1153
    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_LTE:[I

    aget v0, v0, v1

    goto :goto_5

    .line 1160
    :pswitch_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-eqz v0, :cond_16

    :cond_15
    const v0, 0x7f020263

    :goto_6
    move v2, v3

    .line 1162
    goto/16 :goto_0

    .line 1160
    :cond_16
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_3G:[I

    aget v0, v0, v1

    goto :goto_6

    .line 1166
    :cond_17
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    aget v0, v0, v1

    goto :goto_4

    .line 1171
    :cond_18
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1172
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSprintDataIconId(Z)I

    move-result v0

    move v2, v3

    goto/16 :goto_0

    :cond_19
    move v0, v1

    move v2, v1

    .line 1174
    goto/16 :goto_0

    .line 1194
    :cond_1a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    .line 1195
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    .line 1196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isDataConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataConnected:Z

    .line 1200
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eq v0, v1, :cond_2

    .line 1201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    goto/16 :goto_1

    .line 1054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1076
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 1123
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1151
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private updateDataIconLater(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 2039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z

    .line 2040
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2048
    return-void
.end method

.method private final updateDataNetType()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x5

    const/16 v6, 0x3f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v3

    .line 769
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 770
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkCountry()Ljava/lang/String;

    move-result-object v5

    .line 774
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    if-eqz v2, :cond_2

    .line 775
    const-string v2, "45400"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45402"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45410"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45418"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    .line 779
    :goto_0
    if-eqz v2, :cond_3

    .line 780
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_D:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    .line 1038
    :goto_1
    return-void

    :cond_1
    move v2, v0

    .line 775
    goto :goto_0

    :cond_2
    move v2, v0

    .line 785
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 791
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 793
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 794
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto :goto_1

    .line 796
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 798
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto :goto_1

    .line 800
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    goto :goto_2

    .line 805
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto :goto_1

    .line 814
    :cond_8
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 815
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto :goto_1

    .line 817
    :cond_9
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v0

    if-nez v0, :cond_a

    sget v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v6, v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVodafoneEU()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 818
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto :goto_1

    .line 821
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto :goto_1

    .line 827
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 828
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_E:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto :goto_1

    .line 830
    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v0

    if-nez v0, :cond_d

    sget v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v6, v0, :cond_e

    .line 831
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 833
    :cond_e
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCU()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 834
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 837
    :cond_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_E:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 843
    :pswitch_3
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 844
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 846
    :cond_10
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 847
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLowHsdpaCategory:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 848
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 850
    :cond_12
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 853
    :cond_13
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v8, v2, :cond_15

    .line 854
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 855
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 857
    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 860
    :cond_15
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v1, v2, :cond_19

    .line 861
    const-string v2, "302500"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "302490"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "302320"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move v0, v1

    .line 863
    :cond_17
    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_3
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_18
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_3

    .line 865
    :cond_19
    const/16 v2, 0x26

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v2, v3, :cond_1b

    .line 866
    const-string v0, "302220"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 867
    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_1a
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_4

    .line 869
    :cond_1b
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v7, v2, :cond_1f

    .line 870
    const-string v2, "302610"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "302640"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "302780"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    move v0, v1

    .line 872
    :cond_1d
    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_HPLUS:[I

    :goto_5
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_1e
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_5

    .line 875
    :cond_1f
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 883
    :pswitch_4
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 884
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 886
    :cond_20
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 887
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLowHsdpaCategory:Z

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 888
    :cond_21
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 890
    :cond_22
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 893
    :cond_23
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v8, v2, :cond_25

    .line 894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 895
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 897
    :cond_24
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 900
    :cond_25
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v1, v2, :cond_29

    .line 901
    const-string v2, "302500"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "302490"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "302320"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    move v0, v1

    .line 903
    :cond_27
    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_28
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_6

    .line 905
    :cond_29
    const/16 v2, 0x26

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v2, v3, :cond_2b

    .line 906
    const-string v0, "302220"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 907
    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_2a
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_7

    .line 909
    :cond_2b
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isOrange()Z

    move-result v2

    if-nez v2, :cond_2c

    const/16 v2, 0x27

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v2, v3, :cond_2c

    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v6, v2, :cond_2d

    .line 910
    :cond_2c
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3GPLUS:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 912
    :cond_2d
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-eqz v2, :cond_2f

    .line 913
    :cond_2e
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 915
    :cond_2f
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v7, v2, :cond_33

    .line 916
    const-string v2, "302610"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "302640"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "302780"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    move v0, v1

    .line 918
    :cond_31
    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_HPLUS:[I

    :goto_8
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_32
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    goto :goto_8

    .line 921
    :cond_33
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 927
    :pswitch_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 928
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 930
    :cond_34
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 931
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 933
    :cond_35
    const/16 v2, 0x26

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v2, v3, :cond_37

    .line 934
    const-string v0, "302220"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 935
    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_9
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_36
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_9

    .line 937
    :cond_37
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v6, v2, :cond_39

    .line 938
    const-string v0, "1"

    const-string v1, "gsm.networktype.dc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 939
    if-eqz v0, :cond_38

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_DC:[I

    :goto_a
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_38
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3GPLUS:[I

    goto :goto_a

    .line 941
    :cond_39
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v2

    if-nez v2, :cond_3a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-eqz v2, :cond_3b

    .line 942
    :cond_3a
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 944
    :cond_3b
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isOrange()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isChina()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_3c
    const/16 v2, 0x27

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v2, v3, :cond_3e

    .line 945
    :cond_3d
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_HPLUS:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 947
    :cond_3e
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v1, v2, :cond_42

    .line 948
    const-string v2, "302500"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "302490"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "302320"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_3f
    move v0, v1

    .line 950
    :cond_40
    if-eqz v0, :cond_41

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_b
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_41
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    goto :goto_b

    .line 952
    :cond_42
    const/16 v0, 0x23

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_44

    .line 953
    const-string v0, "51502"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 954
    if-eqz v0, :cond_43

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_c
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_43
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    goto :goto_c

    .line 956
    :cond_44
    sget v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v8, v0, :cond_45

    const/16 v0, 0xe

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v0, v1, :cond_45

    const/16 v0, 0x12

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v0, v1, :cond_45

    const/16 v0, 0x11

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v0, v1, :cond_45

    const/16 v0, 0x18

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_46

    .line 957
    :cond_45
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 959
    :cond_46
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isLATAM()Z

    move-result v0

    if-nez v0, :cond_47

    sget v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v7, v0, :cond_47

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVodafoneEU()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 960
    :cond_47
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_HPLUS:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 963
    :cond_48
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 970
    :pswitch_6
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 971
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 972
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 974
    :cond_49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    :goto_d
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_4a
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    goto :goto_d

    .line 978
    :cond_4b
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 986
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow3gForEvdo:Z

    if-eqz v0, :cond_4d

    .line 988
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 989
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_3G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 991
    :cond_4c
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G_CDMA:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 994
    :cond_4d
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_EVDO:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1000
    :pswitch_8
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1001
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_LTE:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1003
    :cond_4e
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1004
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G_LTE:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1006
    :cond_4f
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1007
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_LTE:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1009
    :cond_50
    if-nez v2, :cond_51

    const/16 v0, 0x46

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_51

    .line 1010
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1012
    :cond_51
    const/16 v0, 0x38

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_53

    .line 1014
    const-string v0, "20416"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1015
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1018
    :cond_52
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_LTE:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1021
    :cond_53
    const/16 v0, 0x63

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_56

    .line 1022
    const-string v0, "pl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1023
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_LTE:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1025
    :cond_54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    if-eqz v0, :cond_55

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_e
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_55
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_LTE:[I

    goto :goto_e

    .line 1027
    :cond_56
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCU()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1028
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4GLTE:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1030
    :cond_57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    if-eqz v0, :cond_58

    .line 1031
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 1034
    :cond_58
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_LTE:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconList:[I

    goto/16 :goto_1

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private updateFemtocellIcon()V
    .locals 9

    .prologue
    const v1, 0x7f0204c0

    const/16 v8, 0xc

    const/4 v2, 0x0

    .line 1207
    const-string v0, "FEMTOCELL_ICON"

    const-string v3, "updateFemtocellIcon"

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCallState()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 1213
    const-string v0, "FEMTOCELL_ICON"

    const-string v1, "skip updating icon during voice call"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :goto_0
    return-void

    .line 1221
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkId()I

    move-result v0

    .line 1222
    const-string v3, "FEMTOCELL_ICON"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voice nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const/16 v3, 0xfa

    if-lt v0, v3, :cond_4

    const/16 v3, 0xfe

    if-gt v0, v3, :cond_4

    move v0, v1

    .line 1226
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v3

    .line 1227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSectorId()Ljava/lang/String;

    move-result-object v4

    .line 1228
    const-string v5, "FEMTOCELL_ICON"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data rat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    sparse-switch v3, :sswitch_data_0

    .line 1245
    :cond_1
    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    .line 1246
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    goto :goto_0

    .line 1233
    :sswitch_0
    if-eqz v4, :cond_1

    .line 1236
    const/16 v3, 0xc

    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1237
    and-int/lit8 v3, v3, 0xc

    if-ne v3, v8, :cond_3

    :goto_3
    move v0, v1

    .line 1241
    goto :goto_2

    .line 1239
    :catch_0
    move-exception v1

    .line 1240
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_1

    .line 1229
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private final updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 644
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLteMdmQscPhone:Z

    if-eqz v0, :cond_1

    .line 645
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrengthCmccSgLte()V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-eqz v0, :cond_2

    .line 649
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrengthSgLte()V

    goto :goto_0

    .line 652
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 653
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrengthCtLte()V

    goto :goto_0

    .line 658
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasCombinedService()Z

    move-result v5

    .line 661
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isOrangeFR()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    .line 663
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 664
    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "20801"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "34001"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 666
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mOpNameVisible:Z

    .line 674
    :cond_5
    :goto_1
    const/4 v0, 0x5

    .line 675
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_12

    .line 676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getHtcCdmaMaxLevel()I

    move-result v0

    :goto_2
    move v4, v0

    .line 680
    :goto_3
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_9

    .line 681
    :cond_6
    const-string v0, "SIGNAL_ICON"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level=X/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconNull(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 683
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    .line 684
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    goto :goto_0

    .line 668
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mOpNameVisible:Z

    goto :goto_1

    .line 676
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getHtcGsmMaxLevel()I

    move-result v0

    goto :goto_2

    .line 690
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 691
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCdmaRoamingIndicator()I

    move-result v0

    .line 692
    packed-switch v0, :pswitch_data_0

    .line 706
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_4
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    .line 725
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSignalLevel()I

    move-result v1

    .line 726
    const-string v3, "SIGNAL_ICON"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getVoiceNetworkType()I

    move-result v3

    .line 731
    const/16 v4, 0xd

    if-ne v3, v4, :cond_a

    .line 732
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 733
    const-string v1, "SIGNAL_ICON"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid LTE signal, keep current level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    .line 740
    :cond_a
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .line 741
    if-le v1, v3, :cond_b

    .line 742
    const-string v4, "SIGNAL_ICON"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set invalid level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 745
    :cond_b
    if-gez v1, :cond_c

    .line 746
    const-string v3, "SIGNAL_ICON"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set invalid level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " to 0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 751
    :cond_c
    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 752
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    .line 753
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    .line 756
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    if-ne v0, v2, :cond_d

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    if-eq v0, v2, :cond_0

    .line 758
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 694
    :pswitch_0
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    .line 698
    :pswitch_1
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    .line 702
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    :cond_e
    move v0, v2

    .line 706
    goto/16 :goto_4

    .line 712
    :cond_f
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 714
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    .line 718
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    :goto_6
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    :cond_11
    move v0, v2

    goto :goto_6

    :cond_12
    move v4, v0

    goto/16 :goto_3

    .line 692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrengthCmccSgLte()V
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1603
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getModemState()I

    move-result v8

    .line 1604
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasMdmService()Z

    move-result v6

    .line 1605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasQscService()Z

    move-result v5

    .line 1606
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getMdmNetworkType()I

    move-result v3

    .line 1607
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getQscNetworkType()I

    move-result v4

    .line 1608
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getMdmSignalLevel()I

    move-result v0

    .line 1609
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getQscSignalLevel(I)I

    move-result v1

    .line 1610
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v9

    .line 1612
    const-string v10, "SIGNAL_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    if-eqz v6, :cond_0

    const/16 v10, 0xd

    if-ne v4, v10, :cond_0

    .line 1618
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1619
    const-string v0, "SIGNAL_ICON"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid LTE signal, keep current level="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    .line 1624
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    .line 1626
    const/4 v10, 0x3

    if-ne v8, v10, :cond_5

    .line 1628
    if-nez v6, :cond_1

    if-eqz v5, :cond_4

    .line 1630
    :cond_1
    invoke-static {v6, v3, v5, v4}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalRat(ZIZI)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 1633
    invoke-static {v6, v0, v5, v1, v9}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalStrength(ZIZIZ)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    .line 1652
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    if-eq v1, v3, :cond_3

    .line 1654
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    const-string v3, "level"

    if-eqz v6, :cond_a

    :goto_1
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1656
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1658
    :cond_3
    return-void

    .line 1636
    :cond_4
    invoke-static {v2, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalStrength(ZIZIZ)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 1638
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_0

    .line 1642
    :cond_5
    if-ne v8, v7, :cond_8

    .line 1643
    :goto_2
    if-eqz v7, :cond_6

    move v5, v6

    .line 1644
    :cond_6
    if-eqz v7, :cond_9

    .line 1645
    :goto_3
    if-eqz v7, :cond_7

    move v1, v0

    .line 1646
    :cond_7
    invoke-static {v5, v3, v1, v9}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteSingleStandbySignalStrength(ZIIZ)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 1648
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_0

    :cond_8
    move v7, v2

    .line 1642
    goto :goto_2

    :cond_9
    move v3, v4

    .line 1644
    goto :goto_3

    :cond_a
    move v0, v2

    .line 1655
    goto :goto_1
.end method

.method private updateSignalStrengthCtLte()V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 1848
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasCombinedService()Z

    move-result v0

    .line 1849
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v2

    .line 1851
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    .line 1853
    if-nez v0, :cond_1

    .line 1854
    const v0, 0x7f020041

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 1960
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    if-eq v0, v2, :cond_0

    .line 1961
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1962
    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1963
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1965
    :cond_0
    return-void

    .line 1858
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1860
    const/16 v0, 0xd

    if-ne v2, v0, :cond_4

    const/4 v0, 0x1

    .line 1861
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isEvdo()Z

    move-result v4

    .line 1864
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_1a

    .line 1865
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v2

    .line 1866
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1871
    :goto_2
    if-nez v0, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_3

    .line 1872
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    .line 1874
    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1876
    :cond_3
    const-string v2, "SIGNAL_ICON"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cdma:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    if-eqz v0, :cond_8

    .line 1879
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1880
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v0, v0, v1

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    :goto_5
    move v1, v3

    .line 1918
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1860
    goto :goto_1

    .line 1872
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v2

    goto :goto_3

    .line 1880
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_4G_SIGNAL_R:[I

    aget v0, v0, v1

    goto :goto_4

    .line 1884
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_4G_SIGNAL:[[I

    aget-object v0, v0, v3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    .line 1886
    :cond_8
    if-eqz v4, :cond_f

    .line 1887
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCallState()I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 1888
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1889
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL_R:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    .line 1891
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_1X_SIGNAL:[I

    aget v0, v0, v3

    :goto_6
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL:[I

    aget v0, v0, v3

    goto :goto_6

    .line 1896
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1897
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v0, v0, v1

    :goto_7
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_3G_SIGNAL_R:[I

    aget v0, v0, v1

    goto :goto_7

    .line 1901
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_1X_3G_SIGNAL:[[I

    aget-object v0, v0, v3

    aget v0, v0, v1

    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_3G_SIGNAL:[[I

    aget-object v0, v0, v3

    aget v0, v0, v1

    goto :goto_8

    .line 1907
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1908
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v0, v0, v3

    :goto_9
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    :cond_10
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL_R:[I

    aget v0, v0, v3

    goto :goto_9

    .line 1912
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_1X_SIGNAL:[I

    aget v0, v0, v3

    :goto_a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_5

    :cond_12
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL:[I

    aget v0, v0, v3

    goto :goto_a

    .line 1920
    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSignalLevel()I

    move-result v0

    .line 1921
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1924
    packed-switch v2, :pswitch_data_0

    .line 1948
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1949
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v0, v0, v1

    :goto_b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    .line 1926
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1927
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v0, v0, v1

    :goto_c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_4G_SIGNAL_R:[I

    aget v0, v0, v1

    goto :goto_c

    .line 1931
    :cond_15
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_4G_SIGNAL:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    .line 1939
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1940
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v0, v0, v1

    :goto_d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_3G_SIGNAL_R:[I

    aget v0, v0, v1

    goto :goto_d

    .line 1944
    :cond_17
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_3G_SIGNAL:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    .line 1949
    :cond_18
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL_R:[I

    aget v0, v0, v1

    goto :goto_b

    .line 1953
    :cond_19
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :cond_1a
    move v3, v1

    goto/16 :goto_2

    .line 1924
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrengthSgLte()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_1

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasDataService()Z

    move-result v5

    .line 1664
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasVoiceService()Z

    move-result v6

    .line 1665
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataNetworkType()I

    move-result v7

    .line 1666
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getVoiceNetworkType()I

    move-result v8

    .line 1667
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    .line 1669
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    const/16 v4, 0x65

    invoke-virtual {v0, v3, v4}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;I)I

    move-result v3

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    const/16 v10, 0x64

    invoke-virtual {v0, v4, v10}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;I)I

    move-result v10

    .line 1672
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasCombinedService()Z

    move-result v11

    .line 1673
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->is2gOnly(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->is2gOnly(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 1675
    :goto_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    .line 1676
    const-string v12, "getUiccAppType"

    invoke-virtual {v4, v12, v2}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1677
    if-eqz v4, :cond_5

    const-string v2, "getUiccAppType"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 1678
    :goto_2
    if-eqz v4, :cond_6

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1680
    :goto_3
    const-string v12, "SIGNAL_ICON"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v12, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    if-eqz v11, :cond_2

    const/16 v4, 0xd

    if-ne v8, v4, :cond_2

    .line 1687
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1688
    const-string v3, "SIGNAL_ICON"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid LTE signal, keep current level="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v12, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    .line 1693
    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    .line 1695
    if-eqz v11, :cond_a

    .line 1696
    if-eqz v9, :cond_7

    .line 1698
    invoke-static {v5, v7, v3, v9}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteSingleStandbySignalStrength(ZIIZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 1700
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    .line 1721
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    if-eq v0, v2, :cond_0

    .line 1723
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1724
    const-string v2, "level"

    if-eqz v5, :cond_b

    :goto_5
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1725
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1673
    goto/16 :goto_1

    :cond_5
    move-object v4, v2

    .line 1677
    goto/16 :goto_2

    :cond_6
    move v2, v1

    .line 1678
    goto/16 :goto_3

    .line 1701
    :cond_7
    if-nez v2, :cond_8

    if-nez v0, :cond_8

    if-eqz v5, :cond_8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getRatLevel(I)I

    move-result v0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getRatLevel(I)I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 1703
    :cond_8
    invoke-static {v6, v8, v10, v9}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteSingleStandbySignalStrength(ZIIZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 1705
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_4

    .line 1709
    :cond_9
    invoke-static {v5, v7, v6, v8}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalRat(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 1712
    invoke-static {v5, v3, v6, v10, v9}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalStrength(ZIZIZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_4

    .line 1716
    :cond_a
    invoke-static {v1, v1, v1, v1}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteSingleStandbySignalStrength(ZIIZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    .line 1717
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_4

    :cond_b
    move v3, v1

    .line 1724
    goto :goto_5
.end method

.method private updateSimCardIcon()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 598
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v6

    .line 599
    .local v6, state:Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v7, 0x0

    .line 600
    .local v7, visible:Z
    const/4 v2, 0x0

    .line 601
    .local v2, iconId:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v8

    if-nez v8, :cond_3

    .line 602
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v8, :cond_2

    .line 607
    :cond_0
    const/4 v7, 0x1

    .line 608
    const v2, 0x7f0204b9

    .line 628
    :cond_1
    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    .line 629
    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    .line 630
    return-void

    .line 609
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_1

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v8

    if-nez v8, :cond_1

    .line 615
    const/4 v7, 0x1

    .line 616
    const v2, 0x7f020468

    goto :goto_0

    .line 619
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, slotType:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 621
    .local v4, slot:Ljava/lang/String;
    const-string v8, "SIM_ICON"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 622
    .end local v4           #slot:Ljava/lang/String;
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v8, :cond_1

    aget-object v8, v5, v11

    const-string v9, "RUIM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    aget-object v8, v5, v11

    const-string v9, "SIM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 624
    :cond_5
    const/4 v7, 0x1

    .line 625
    const v2, 0x7f020468

    goto :goto_0
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 565
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, state:Ljava/lang/String;
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "SIM_ICON"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    const-string v2, "PERM_DISABLED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 575
    :cond_2
    const-string v2, "ICC_FAIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 576
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 577
    :cond_3
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 578
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 579
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 580
    :cond_4
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 581
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 583
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 585
    :cond_6
    const-string v2, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ICC_HOT_SWAP_INSERTED_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 590
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 591
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 593
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private updateWifiIcon()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1299
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_5

    .line 1300
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/policy/HtcIcons;->WIFI_SIGNAL_STRENGTH_ACTIVITY:[[I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    aget-object v0, v2, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivity:I

    aget v0, v0, v2

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    .line 1303
    sget-object v2, Lcom/android/systemui/statusbar/policy/HtcIcons;->QS_WIFI_SIGNAL_STRENGTH:[I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_2
    aget v0, v2, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQSWifiIconId:I

    .line 1311
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-nez v0, :cond_0

    .line 1312
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivity:I

    .line 1314
    :cond_0
    return-void

    .line 1300
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/HtcIcons;->WIFI_SIGNAL_STRENGTH:[I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_4
    aget v0, v2, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    goto :goto_4

    .line 1303
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    goto :goto_2

    .line 1305
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0204d7

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    .line 1308
    const v0, 0x7f020177

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQSWifiIconId:I

    goto :goto_3

    .line 1305
    :cond_6
    const v0, 0x7f0204ce

    goto :goto_5
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1250
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1251
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1252
    const-string v0, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiEnabled:Z

    .line 1254
    const-string v1, "WIFI_ICON"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWifiState: WIFI_STATE_CHANGED "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "enabled"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiEnabled:Z

    if-nez v0, :cond_0

    .line 1258
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    .line 1259
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1260
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    .line 1296
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1252
    goto :goto_0

    .line 1254
    :cond_3
    const-string v0, "disabled"

    goto :goto_1

    .line 1261
    :cond_4
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1262
    const-string v0, "newRssi"

    const/16 v4, -0xc8

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1263
    const-string v0, "frequency"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1264
    sget v5, Lcom/android/systemui/statusbar/policy/HtcIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v0

    .line 1265
    const-string v5, "WIFI_ICON"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWifiState: RSSI_CHANGED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiOffload:Z

    if-eqz v5, :cond_5

    const/16 v5, -0xc7

    if-ne v4, v5, :cond_5

    move v0, v3

    .line 1269
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    if-eq v0, v4, :cond_1

    .line 1270
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    .line 1271
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiOffload:Z

    if-nez v4, :cond_6

    .line 1272
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    .line 1273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    goto :goto_2

    .line 1275
    :cond_6
    if-ne v0, v3, :cond_8

    .line 1276
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    .line 1277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_7

    const v0, 0x7f0204d7

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    .line 1280
    const v0, 0x7f020177

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQSWifiIconId:I

    goto :goto_2

    .line 1277
    :cond_7
    const v0, 0x7f0204ce

    goto :goto_3

    .line 1282
    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    .line 1283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    goto :goto_2

    .line 1287
    :cond_9
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1289
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiConnected:Z

    .line 1290
    const-string v1, "WIFI_ICON"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWifiState: NETWORK_STATE_CHANGED "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_c

    const-string v0, "connected"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiConnected:Z

    if-nez v0, :cond_a

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    .line 1292
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    .line 1293
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    goto/16 :goto_2

    :cond_b
    move v1, v2

    .line 1289
    goto :goto_4

    .line 1290
    :cond_c
    const-string v0, "disconnected"

    goto :goto_5
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;)V

    .line 410
    return-void
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 7
    .parameter "cb"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 435
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQSWifiIconId:I

    move-object v0, p1

    move v4, v3

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 437
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimCardIcon()V

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto :goto_0

    .line 450
    :cond_3
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateAirplaneMode()V

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto :goto_0

    .line 453
    :cond_4
    const-string v1, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 454
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQueryMode:Z

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->broadcastSignalClusterIntent()V

    goto :goto_0

    .line 456
    :cond_5
    const-string v1, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 457
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQueryMode:Z

    goto :goto_0

    .line 458
    :cond_6
    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 459
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    .line 460
    const-string v2, "DATA_ICON"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile data "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v1, :cond_7

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto :goto_0

    .line 460
    :cond_7
    const-string v1, "disabled"

    goto :goto_1

    .line 464
    :cond_8
    const-string v1, "com.htc.action.lte_lock_status_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isLteLocked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    .line 467
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    .line 469
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;)V
    .locals 6
    .parameter "cluster"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    invoke-interface {p1, v0, v1, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    .line 415
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    move-object v0, p1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setPhoneSignalIcon(ZIILjava/lang/String;)V

    .line 420
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    const v1, 0x7f0204b7

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    .line 422
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setSimCardIcon(ZI)V

    .line 424
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isOrangeFR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mOpNameVisible:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setOpNameVisibility(Z)V

    .line 426
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSprintLteTextVisible:Z

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setSprintLteTextVisibility(Z)V

    .line 429
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setFemtocellIcon(ZI)V

    .line 431
    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->batchApply()V

    .line 432
    return-void
.end method

.method refreshViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1323
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isChina()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-eqz v3, :cond_1

    .line 1324
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    .line 1325
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    .line 1332
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconIdRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiActivity:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivity:I

    if-eq v3, v4, :cond_5

    .line 1347
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;

    .line 1348
    .local v1, cluster:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;)V

    goto :goto_1

    .line 1327
    .end local v1           #cluster:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    goto :goto_0

    .line 1350
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    if-eq v3, v4, :cond_4

    .line 1351
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 1352
    .local v0, cb:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_2

    .line 1356
    .end local v0           #cb:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQueryMode:Z

    if-eqz v3, :cond_5

    .line 1357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->broadcastSignalClusterIntent()V

    .line 1361
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    if-eq v3, v4, :cond_6

    .line 1362
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneMode:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastAirplaneMode:Z

    .line 1366
    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalVisible:Z

    .line 1367
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    if-eq v3, v4, :cond_7

    .line 1368
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconName:Ljava/lang/String;

    .line 1369
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconId:I

    .line 1371
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconIdRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    if-eq v3, v4, :cond_8

    .line 1372
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconNameRight:Ljava/lang/String;

    .line 1373
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconIdRight:I

    .line 1377
    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    if-ne v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eq v3, v4, :cond_b

    .line 1378
    :cond_9
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    if-eq v3, v4, :cond_a

    .line 1379
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconName:Ljava/lang/String;

    .line 1380
    :cond_a
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    .line 1381
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    .line 1385
    :cond_b
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    if-ne v3, v4, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-ne v3, v4, :cond_c

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiActivity:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivity:I

    if-eq v3, v4, :cond_e

    .line 1387
    :cond_c
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    if-eq v3, v4, :cond_d

    .line 1388
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconName:Ljava/lang/String;

    .line 1389
    :cond_d
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivity:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiActivity:I

    .line 1390
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiIconId:I

    .line 1391
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiVisible:Z

    .line 1395
    :cond_e
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-ne v3, v4, :cond_f

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    if-eq v3, v4, :cond_11

    .line 1396
    :cond_f
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    if-eq v3, v4, :cond_10

    .line 1397
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconName:Ljava/lang/String;

    .line 1398
    :cond_10
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardVisible:Z

    .line 1399
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    .line 1403
    :cond_11
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    if-ne v3, v4, :cond_12

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    if-eq v3, v4, :cond_14

    .line 1404
    :cond_12
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    if-eq v3, v4, :cond_13

    .line 1405
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconName:Ljava/lang/String;

    .line 1406
    :cond_13
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellVisible:Z

    .line 1407
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    .line 1411
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->dumpIconState()V

    .line 1412
    return-void
.end method

.method public startSimulation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2098
    const-string v0, "SIMULATION"

    const-string v2, "start simulation"

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    .line 2100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSkuId()I

    move-result v0

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    .line 2101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getRegion()I

    move-result v1

    :cond_0
    sput v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->REGION:I

    .line 2102
    return-void

    :cond_1
    move v0, v1

    .line 2100
    goto :goto_0
.end method

.method public stopSimulation()V
    .locals 2

    .prologue
    .line 2107
    const-string v0, "SIMULATION"

    const-string v1, "stop simulation"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    .line 2109
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    .line 2110
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->REGION:I

    .line 2111
    return-void
.end method

.method public triggerIconUpdate()V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    .line 2116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    .line 2117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    .line 2118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimCardIcon()V

    .line 2119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateAirplaneMode()V

    .line 2120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 2121
    return-void
.end method
