.class Lcom/miui/vsimcore/service/VsimMTKService$1;
.super Lcom/miui/vsimcore/service/IVMTKService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/service/VsimMTKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/vsimcore/service/VsimMTKService;


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/service/VsimMTKService;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/miui/vsimcore/service/VsimMTKService$1;->this$0:Lcom/miui/vsimcore/service/VsimMTKService;

    invoke-direct {p0}, Lcom/miui/vsimcore/service/IVMTKService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlatformCapability()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-static {}, Lvsim/adaptor/client/vsimmain;->getPlatformCapability()I

    move-result v0

    return v0
.end method

.method public processVSIM(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "VSC-VsimMTKService"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p1, p2}, Lvsim/adaptor/client/vsimmain;->processVSIM(II)I

    move-result p1

    return p1
.end method

.method public registerCallback(Lcom/miui/vsimcore/service/IVMTKServiceCallback;)I
    .registers 4

    .line 47
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/vsimcore/service/VsimMTKService$1;->this$0:Lcom/miui/vsimcore/service/VsimMTKService;

    # getter for: Lcom/miui/vsimcore/service/VsimMTKService;->mBinder:Lcom/miui/vsimcore/service/IVMTKService$Stub;
    invoke-static {v1}, Lcom/miui/vsimcore/service/VsimMTKService;->access$000(Lcom/miui/vsimcore/service/VsimMTKService;)Lcom/miui/vsimcore/service/IVMTKService$Stub;

    invoke-static {}, Lcom/miui/vsimcore/service/IVMTKService$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string p1, "VSC-VsimMTKService"

    const-string v0, "Cannot perform! returning failure"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 51
    :cond_1c
    # setter for: Lcom/miui/vsimcore/service/VsimMTKService;->mCb:Lcom/miui/vsimcore/service/IVMTKServiceCallback;
    invoke-static {p1}, Lcom/miui/vsimcore/service/VsimMTKService;->access$102(Lcom/miui/vsimcore/service/IVMTKServiceCallback;)Lcom/miui/vsimcore/service/IVMTKServiceCallback;

    if-nez p1, :cond_28

    const-string p1, "VSC-VsimMTKService"

    const-string v0, "registerCallback() - null cb"

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public restartVSIM(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-static {p1}, Lvsim/adaptor/client/vsimmain;->restartVSIM(I)I

    move-result p1

    return p1
.end method

.method public unregisterCallback(Lcom/miui/vsimcore/service/IVMTKServiceCallback;)I
    .registers 3

    .line 61
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/vsimcore/service/VsimMTKService$1;->this$0:Lcom/miui/vsimcore/service/VsimMTKService;

    # getter for: Lcom/miui/vsimcore/service/VsimMTKService;->mBinder:Lcom/miui/vsimcore/service/IVMTKService$Stub;
    invoke-static {v0}, Lcom/miui/vsimcore/service/VsimMTKService;->access$000(Lcom/miui/vsimcore/service/VsimMTKService;)Lcom/miui/vsimcore/service/IVMTKService$Stub;

    invoke-static {}, Lcom/miui/vsimcore/service/IVMTKService$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result p1

    if-nez p1, :cond_1c

    const-string p1, "VSC-VsimMTKService"

    const-string v0, "Cannot perform! returning failure"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    .line 65
    # setter for: Lcom/miui/vsimcore/service/VsimMTKService;->mCb:Lcom/miui/vsimcore/service/IVMTKServiceCallback;
    invoke-static {p1}, Lcom/miui/vsimcore/service/VsimMTKService;->access$102(Lcom/miui/vsimcore/service/IVMTKServiceCallback;)Lcom/miui/vsimcore/service/IVMTKServiceCallback;

    const/4 p1, 0x0

    return p1
.end method
