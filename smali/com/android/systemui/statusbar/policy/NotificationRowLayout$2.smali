.class Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;
.super Ljava/lang/Object;
.source "NotificationRowLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->refineExpand:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->access$002(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Z)Z

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    .line 319
    return-void
.end method
