.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;
.super Landroid/telephony/PhoneStateListener;
.source "HtcGenericNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneState:I

    .line 524
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateFemtocellIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1100(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 535
    :cond_1
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .parameter "direction"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataActivity:I

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 553
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataState:I

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->dumpState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$900(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 545
    return-void
.end method

.method public onSecondSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .parameter "signalStrength"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2nd SignalStrength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getQscNetworkType()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$700(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 492
    return-void
.end method

.method public onSectorIDIndChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "sid"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SectorID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSectorId:Ljava/lang/String;

    .line 560
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateFemtocellIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1100(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 561
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCdmaRoamingIndicator()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$800(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v2, "TelephonyCallback"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p1, v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataNetType:I

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->dumpState()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$900(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 509
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 510
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimCardIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 514
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateFemtocellIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1100(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 516
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .parameter "signalStrength"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SignalStrength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    .line 482
    return-void
.end method
