.class Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/service/AuthQcUIMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UimRemoteClientServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/vsimcore/service/AuthQcUIMService;


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/service/AuthQcUIMService;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;->this$0:Lcom/miui/vsimcore/service/AuthQcUIMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 171
    invoke-static {p2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    move-result-object p1

    # setter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    invoke-static {p1}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$102(Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    .line 173
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " UimRemoteClientServiceConnection onServiceConnected() mService = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$100()Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$100()Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    move-result-object p1

    if-nez p1, :cond_33

    .line 175
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "failed to bind UimRemoteClientService!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_33
    :try_start_33
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$100()Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    move-result-object p1

    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$200()Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;->registerCallback(Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;)I

    move-result p1

    .line 180
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegCb() returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mCb="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$200()Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_63} :catch_64

    goto :goto_6e

    :catch_64
    move-exception p1

    .line 182
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "failed to RegCb()"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :goto_6e
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;->this$0:Lcom/miui/vsimcore/service/AuthQcUIMService;

    invoke-virtual {p2}, Lcom/miui/vsimcore/service/AuthQcUIMService;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    new-instance p2, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection$1;

    invoke-direct {p2, p0}, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection$1;-><init>(Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 194
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UimRemoteClientServiceConnection onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_9
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$100()Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 197
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$100()Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    move-result-object p1

    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$200()Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;->deregisterCallback(Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_25

    :catch_1b
    move-exception p1

    .line 200
    # getter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to deregisterCallback mCb"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    const/4 p1, 0x0

    .line 202
    # setter for: Lcom/miui/vsimcore/service/AuthQcUIMService;->mService:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    invoke-static {p1}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$102(Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    return-void
.end method
