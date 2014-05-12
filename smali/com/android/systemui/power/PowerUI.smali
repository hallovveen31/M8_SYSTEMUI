.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z


# instance fields
.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryLevelTextView2:Landroid/widget/TextView;

.field private mBatteryShowLowOnEndCall:Z

.field mBatteryStatus:I

.field private mBatteryView:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field private mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLastOrientation:I

.field mLastShowBatteryLowLevel:I

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

.field mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field mLowBatteryReminderLevels:[I

.field private final mLowBatteryWarningLevel:I

.field private final mLowBatteryWarningLevel2:I

.field private mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

.field mOVPChargerDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mOVPChargerListener:Landroid/content/DialogInterface$OnDismissListener;

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPlugType:I

.field private mPluggedBatteryLevel:I

.field private final mRedrawLowBatteryWarningTask:Ljava/lang/Runnable;

.field private mScreenOffTime:J

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mshowLowChargingWarning:Z

.field private mshowLowChargingWarning2:Z

.field private otherAppsContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 87
    new-instance v0, Lcom/android/systemui/power/PowerUI$StatusBarHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/power/PowerUI$StatusBarHandler;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 89
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 90
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 91
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 92
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 94
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 101
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    .line 102
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    .line 103
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningLevel:I

    .line 105
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    .line 106
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningLevel2:I

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 126
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    .line 134
    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 137
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLastShowBatteryLowLevel:I

    .line 138
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLastOrientation:I

    .line 140
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRedrawLowBatteryWarningTask:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 264
    new-instance v0, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    new-instance v0, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 440
    new-instance v0, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOVPChargerListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 805
    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->otherAppsContext:Landroid/content/Context;

    .line 858
    return-void
.end method

.method private PowerSaverOn(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 780
    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 782
    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPhoneState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLowBatteryDialog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBatteryShowLowOnEndCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_0
    const-string v1, "case"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 790
    .local v0, getCase:I
    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PowerSaverOn] getCase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 794
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 803
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->onUnsupportedCharger(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->PowerSaverOn(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->checkHtcCustomizationReader()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/PowerUI;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->stopLowBatteryTone()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/PowerUI;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showLowChargingWarning()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showLowChargingWarning2()V

    return-void
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 174
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 175
    .local v0, customizationManger:Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 176
    const-string v3, "PowerUI"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0           #customizationManger:Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 180
    .restart local v0       #customizationManger:Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 183
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 184
    const-string v3, "PowerUI"

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v0           #customizationManger:Lcom/htc/customization/HtcCustomizationManager;
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get HtcCustomization, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 195
    goto :goto_0
.end method

.method private closeLastBatteryView()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryView:Landroid/view/View;

    .line 596
    :cond_0
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 249
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 250
    const/4 v2, 0x1

    .line 258
    :cond_0
    :goto_0
    return v2

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-ge p1, v3, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 256
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 257
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 258
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 256
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 261
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 390
    const-string v1, "PowerUI"

    const-string v2, "onBatteryLow"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, checkValue:Z
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->checkHtcCustomizationReader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "battery_use_another_low_battery_condition"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 396
    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 397
    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    if-eqz v0, :cond_1

    .line 404
    const-string v1, "PowerUI"

    const-string v2, "Before SHOW_LOW_BATTERY_WARNING"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 425
    :cond_1
    return-void
.end method

.method private onUnsupportedCharger(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showOverVoltageWarning()V

    .line 461
    return-void
.end method

.method private showLowChargingWarning()V
    .locals 4

    .prologue
    .line 514
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "PowerUI"

    const-string v3, "+showLowChargingWarning"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->closeLastBatteryView()V

    .line 517
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 518
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 519
    const v2, 0x7f0a0107

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 520
    const v2, 0x20401bd

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 521
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 523
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 524
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 525
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 526
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 566
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "PowerUI"

    const-string v3, "-showLowChargingWarning"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    return-void
.end method

.method private showLowChargingWarning2()V
    .locals 3

    .prologue
    .line 571
    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerUI"

    const-string v2, "+showLowChargingWarning2"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->closeLastBatteryView()V

    .line 574
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 576
    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 577
    const v1, 0x7f0a0109

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 578
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 580
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    .line 581
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 582
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 585
    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "PowerUI"

    const-string v2, "-showLowChargingWarning2"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1
    return-void
.end method

.method private showOverVoltageWarning()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 464
    const-string v4, "PowerUI"

    const-string v5, "+showOverVoltageWarning"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mOVPChargerDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v4, :cond_1

    .line 467
    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 468
    const-string v4, "PowerUI"

    const-string v5, "Don\'t show Over Voltage Warning Dialog again"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 476
    const/4 v3, 0x0

    .line 478
    .local v3, msg:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v5, 0x20401ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 482
    :goto_1
    if-eqz v3, :cond_2

    .line 483
    invoke-virtual {v0, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 484
    :cond_2
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 485
    invoke-virtual {v0, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 487
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 490
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mOVPChargerListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 492
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 493
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 495
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOVPChargerDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 497
    const-string v4, "PowerUI"

    const-string v5, "-showOverVoltageWarning"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    .end local v1           #d:Lcom/htc/dialog/HtcAlertDialog;
    :catch_0
    move-exception v2

    .line 480
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PowerUI"

    const-string v5, "String charger_not_supported not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startLowBatteryTone()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    const/16 v6, 0x32

    .line 808
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->stopLowBatteryTone()V

    .line 810
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    if-nez v3, :cond_1

    .line 812
    const/16 v1, 0x19

    .line 813
    .local v1, toneType:I
    const/16 v2, 0x50

    .line 816
    .local v2, toneVolume:I
    :try_start_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startLowBatteryTone in CALL_SATATE_IDLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_0

    .line 824
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 825
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 846
    .end local v1           #toneType:I
    .end local v2           #toneVolume:I
    :cond_0
    :goto_1
    return-void

    .line 817
    .restart local v1       #toneType:I
    .restart local v2       #toneVolume:I
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 828
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #toneType:I
    .end local v2           #toneVolume:I
    :cond_1
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 830
    const/16 v1, 0x19

    .line 831
    .restart local v1       #toneType:I
    const/16 v2, 0x50

    .line 833
    .restart local v2       #toneVolume:I
    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 839
    :goto_2
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startLowBatteryTone in CALL_STATE_OFFHOOK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_0

    .line 841
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 842
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 834
    :catch_1
    move-exception v0

    .line 835
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2
.end method

.method private stopLowBatteryTone()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 854
    :cond_0
    return-void
.end method

.method private final updateCallState(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 882
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    .line 883
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 884
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLowBatteryDialog="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLowBatteryDialog2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBatteryShowLowOnEndCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    if-nez v2, :cond_4

    .line 890
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    if-eqz v2, :cond_2

    .line 891
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v2, :cond_3

    .line 892
    :goto_0
    if-nez v0, :cond_1

    .line 893
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 895
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    .line 908
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 891
    goto :goto_0

    .line 899
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_2

    .line 900
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_6

    .line 901
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 902
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_7

    .line 903
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 904
    :cond_7
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    goto :goto_1
.end method


# virtual methods
.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 713
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 510
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 740
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 741
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 742
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    const-string v0, "mLowBatteryDialog2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_3

    const-string v0, "null"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 753
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 762
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 763
    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 765
    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 767
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 768
    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 771
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 747
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 750
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 150
    const-string v0, "PowerUI"

    const-string v1, "newConfig is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 155
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLastOrientation:I

    .line 157
    const-string v0, "PowerUI"

    const-string v1, "orientation is different"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRedrawLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    const-string v0, "PowerUI"

    const-string v1, "call redraw low battery dialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRedrawLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method redrawLowBatteryWarning()V
    .locals 2

    .prologue
    .line 609
    const-string v0, "PowerUI"

    const-string v1, "+redrawLowBatteryWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    .line 611
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLastShowBatteryLowLevel:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarningWithLevel(I)V

    .line 612
    const-string v0, "PowerUI"

    const-string v1, "-redrawLowBatteryWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 716
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 720
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 722
    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 723
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 724
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 726
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 727
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 734
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 735
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 736
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 737
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 2

    .prologue
    .line 600
    const-string v0, "PowerUI"

    const-string v1, "+showLowBatteryWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLastShowBatteryLowLevel:I

    .line 602
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarningWithLevel(I)V

    .line 604
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->startLowBatteryTone()V

    .line 605
    const-string v0, "PowerUI"

    const-string v1, "-showLowBatteryWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void
.end method

.method showLowBatteryWarningWithLevel(I)V
    .locals 12
    .parameter "batteryLevel"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 616
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0106

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, levelText:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 620
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    const-string v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showLowBatteryWarning(), levelText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_0
    return-void

    .line 623
    :cond_0
    const-string v5, "PowerUI"

    const-string v6, "mBatteryLevelTextView2 == null, prepare alter dialog - please connect charger"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const/high16 v6, 0x7f04

    invoke-static {v5, v6, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 625
    .local v4, v:Landroid/view/View;
    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    .line 627
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 630
    .local v0, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    invoke-virtual {v0, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 631
    const v5, 0x7f0a0104

    invoke-virtual {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 632
    invoke-virtual {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 634
    const v5, 0x104000a

    invoke-virtual {v0, v5, v11}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 636
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x5880

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 641
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 642
    const v5, 0x7f0a0010

    new-instance v6, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 656
    :cond_1
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 657
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 666
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 667
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 669
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 670
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    goto/16 :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 203
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v2, v3

    .line 205
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v2, v3

    .line 208
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 209
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v2, "com.htc.powersaversetting"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 226
    return-void

    .line 209
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_0
.end method
