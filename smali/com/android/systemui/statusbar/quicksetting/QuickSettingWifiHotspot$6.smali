.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;
.super Ljava/lang/Object;
.source "QuickSettingWifiHotspot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 893
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->resetStateRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 897
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->hotspotDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 900
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$800()Z

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->getMHSState()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)I

    move-result v0

    .line 902
    .local v0, state:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->setEnabled(Z)V

    .line 903
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    const v2, 0x7f020183

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setImageResource(I)V

    .line 905
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 908
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 909
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 917
    :goto_1
    const-string v1, "QuickSettingWifiHotspot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetHotspotState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void

    .line 900
    .end local v0           #state:I
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getHotspotState()I

    move-result v0

    goto :goto_0

    .line 913
    .restart local v0       #state:I
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 914
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    goto :goto_1
.end method
