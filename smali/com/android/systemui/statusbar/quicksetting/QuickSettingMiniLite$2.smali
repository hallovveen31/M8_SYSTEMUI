.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$2;
.super Landroid/os/Handler;
.source "QuickSettingMiniLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->updateMiniLiteState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V

    :cond_0
    return-void
.end method
