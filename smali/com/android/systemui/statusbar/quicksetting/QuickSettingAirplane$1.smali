.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$1;
.super Ljava/lang/Object;
.source "QuickSettingAirplane.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->toggleNextState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V

    return-void
.end method
