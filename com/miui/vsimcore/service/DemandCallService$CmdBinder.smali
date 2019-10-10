.class Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;
.super Lcom/miui/vsimcore/service/IDemandCall$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/service/DemandCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmdBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/vsimcore/service/DemandCallService;


# direct methods
.method private constructor <init>(Lcom/miui/vsimcore/service/DemandCallService;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    invoke-direct {p0}, Lcom/miui/vsimcore/service/IDemandCall$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/vsimcore/service/DemandCallService;Lcom/miui/vsimcore/service/DemandCallService$1;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;-><init>(Lcom/miui/vsimcore/service/DemandCallService;)V

    return-void
.end method


# virtual methods
.method public sendCmd(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "VSC-DemandCallService"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCmd: cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " arg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x41e0af6f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_39

    const v1, -0x26a8b5a0

    if-eq v0, v1, :cond_2f

    goto :goto_43

    :cond_2f
    const-string v0, "CMD_ACQUIRE_NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x0

    goto :goto_44

    :cond_39
    const-string v0, "CMD_RELEASE_NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p1, -0x1

    :goto_44
    packed-switch p1, :pswitch_data_68

    goto :goto_66

    .line 105
    :pswitch_48
    iget-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # getter for: Lcom/miui/vsimcore/service/DemandCallService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/miui/vsimcore/service/DemandCallService;->access$100(Lcom/miui/vsimcore/service/DemandCallService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_66

    .line 102
    :pswitch_53
    iget-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # getter for: Lcom/miui/vsimcore/service/DemandCallService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/miui/vsimcore/service/DemandCallService;->access$100(Lcom/miui/vsimcore/service/DemandCallService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # getter for: Lcom/miui/vsimcore/service/DemandCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/vsimcore/service/DemandCallService;->access$100(Lcom/miui/vsimcore/service/DemandCallService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_66
    return v3

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_53
        :pswitch_48
    .end packed-switch
.end method

.method public setCB(Lcom/miui/vsimcore/service/IDemandCallCB;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService$CmdBinder;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # setter for: Lcom/miui/vsimcore/service/DemandCallService;->clientCB:Lcom/miui/vsimcore/service/IDemandCallCB;
    invoke-static {v0, p1}, Lcom/miui/vsimcore/service/DemandCallService;->access$202(Lcom/miui/vsimcore/service/DemandCallService;Lcom/miui/vsimcore/service/IDemandCallCB;)Lcom/miui/vsimcore/service/IDemandCallCB;

    return-void
.end method
