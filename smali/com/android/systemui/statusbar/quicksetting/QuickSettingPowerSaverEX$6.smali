.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$6;
.super Landroid/database/ContentObserver;
.source "QuickSettingPowerSaverEX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->updateDemoFLOstate()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V

    return-void
.end method
