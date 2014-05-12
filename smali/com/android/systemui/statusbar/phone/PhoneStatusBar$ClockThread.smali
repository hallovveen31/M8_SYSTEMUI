.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;
.super Ljava/lang/Thread;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockThread"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 3078
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3080
    const-string v0, "ClockThread"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->TAG:Ljava/lang/String;

    .line 3081
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3078
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3100
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3101
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    .line 3115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->startUpdate()V

    .line 3116
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3117
    return-void
.end method

.method public startUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3091
    const-string v0, "ClockThread"

    const-string v1, "start update clock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3095
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3097
    :cond_0
    return-void
.end method

.method public stopUpdate()V
    .locals 2

    .prologue
    .line 3084
    const-string v0, "ClockThread"

    const-string v1, "stop update clock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3087
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ClockThread;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3088
    :cond_0
    return-void
.end method
