.class Lcom/miui/vsimcore/service/VsimOnchipService$1;
.super Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/service/VsimOnchipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/vsimcore/service/VsimOnchipService;


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/service/VsimOnchipService;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1;->this$0:Lcom/miui/vsimcore/service/VsimOnchipService;

    invoke-direct {p0}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;)I
    .registers 4

    .line 60
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1;->this$0:Lcom/miui/vsimcore/service/VsimOnchipService;

    # getter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mBinder:Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;
    invoke-static {v1}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$000(Lcom/miui/vsimcore/service/VsimOnchipService;)Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;

    invoke-static {}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string p1, "VSC-VsimOnchipService"

    const-string v0, "Cannot perform! returning failure"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_1c
    # setter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mCb:Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;
    invoke-static {p1}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$102(Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;)Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    if-nez p1, :cond_28

    const-string p1, "VSC-VsimOnchipService"

    const-string v0, "registerCallback() - null cb"

    .line 66
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public registerToModem(I)I
    .registers 4

    .line 82
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1;->this$0:Lcom/miui/vsimcore/service/VsimOnchipService;

    # getter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mBinder:Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;
    invoke-static {v1}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$000(Lcom/miui/vsimcore/service/VsimOnchipService;)Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;

    invoke-static {}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    const-string p1, "VSC-VsimOnchipService"

    const-string v0, "Cannot perform! returning failure"

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 87
    :cond_1c
    iget-object v0, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1;->this$0:Lcom/miui/vsimcore/service/VsimOnchipService;

    # getter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mAuthThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$200(Lcom/miui/vsimcore/service/VsimOnchipService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 88
    iget-object v0, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1;->this$0:Lcom/miui/vsimcore/service/VsimOnchipService;

    # getter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mAuthThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$200(Lcom/miui/vsimcore/service/VsimOnchipService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 89
    iget-object v0, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1;->this$0:Lcom/miui/vsimcore/service/VsimOnchipService;

    # getter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mAuthThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$200(Lcom/miui/vsimcore/service/VsimOnchipService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    :cond_3a
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1;->this$0:Lcom/miui/vsimcore/service/VsimOnchipService;

    # getter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mAuthThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$200(Lcom/miui/vsimcore/service/VsimOnchipService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/vsimcore/service/VsimOnchipService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/vsimcore/service/VsimOnchipService$1$1;-><init>(Lcom/miui/vsimcore/service/VsimOnchipService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public unregisterCallback(Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;)I
    .registers 3

    .line 73
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1;->this$0:Lcom/miui/vsimcore/service/VsimOnchipService;

    # getter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mBinder:Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;
    invoke-static {v0}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$000(Lcom/miui/vsimcore/service/VsimOnchipService;)Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;

    invoke-static {}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result p1

    if-nez p1, :cond_1c

    const-string p1, "VSC-VsimOnchipService"

    const-string v0, "Cannot perform! returning failure"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    .line 77
    # setter for: Lcom/miui/vsimcore/service/VsimOnchipService;->mCb:Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;
    invoke-static {p1}, Lcom/miui/vsimcore/service/VsimOnchipService;->access$102(Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;)Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    const/4 p1, 0x0

    return p1
.end method
