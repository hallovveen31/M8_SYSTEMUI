.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$1;
.super Ljava/lang/Object;
.source "QuickSettingReorderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
