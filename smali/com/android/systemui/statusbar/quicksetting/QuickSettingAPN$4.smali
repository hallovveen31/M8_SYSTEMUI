.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;
.super Landroid/os/AsyncTask;
.source "QuickSettingAPN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->startAPNbackgroundTask()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 512
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getSelectAPN()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 512
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 522
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->isCTsim()Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Z

    move-result v1

    .line 524
    .local v1, isCTsim:Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 526
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v2, :cond_0

    .line 546
    :goto_0
    return-void

    .line 529
    :cond_0
    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 531
    .local v0, isAirplaneOn:Z
    :goto_1
    const-string v5, "QuickSettingAPN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAPNbackground(done):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isCTsim:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isAirplaneOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz v1, :cond_1

    if-nez p1, :cond_3

    .line 535
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNVisual(I)V
    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)V

    .line 545
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    if-ne v1, v3, :cond_6

    if-nez v0, :cond_6

    :goto_3
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #isAirplaneOn:Z
    :cond_2
    move v0, v4

    .line 529
    goto :goto_1

    .line 536
    .restart local v0       #isAirplaneOn:Z
    :cond_3
    const-string v5, "ctnet"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 537
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNVisual(I)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)V

    goto :goto_2

    .line 538
    :cond_4
    const-string v5, "ctwap"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 539
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    const/4 v6, 0x2

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNVisual(I)V
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)V

    goto :goto_2

    .line 541
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->updateAPNVisual(I)V
    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;I)V

    goto :goto_2

    :cond_6
    move v3, v4

    .line 545
    goto :goto_3
.end method
