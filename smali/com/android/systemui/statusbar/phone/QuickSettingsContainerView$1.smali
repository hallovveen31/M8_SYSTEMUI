.class Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$1;
.super Ljava/lang/Object;
.source "QuickSettingsContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->onModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 182
    return-void
.end method