.class Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$4;
.super Ljava/lang/Object;
.source "QuickSettingsTileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 474
    .local v0, viewParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 475
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #viewParent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 476
    :cond_0
    return-void
.end method
