.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$4;
.super Landroid/os/AsyncTask;
.source "QuickSettingPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->togglePowerSaveState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "args"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->performTogglePowerSaveState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method