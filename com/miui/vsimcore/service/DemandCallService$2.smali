.class Lcom/miui/vsimcore/service/DemandCallService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/service/DemandCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/vsimcore/service/DemandCallService;


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/service/DemandCallService;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$2;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 7

    .line 184
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string v0, "VSC-DemandCallService"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onAvailable: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService$2;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # getter for: Lcom/miui/vsimcore/service/DemandCallService;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/vsimcore/service/DemandCallService;->access$700(Lcom/miui/vsimcore/service/DemandCallService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 187
    :try_start_20
    iget-object v1, p0, Lcom/miui/vsimcore/service/DemandCallService$2;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    const-string v2, "RESULT_KEY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESULT_VALUE_SUCCESS|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/miui/vsimcore/utils/a/a;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/miui/vsimcore/service/DemandCallService;->notifyToClient(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, p1}, Lcom/miui/vsimcore/service/DemandCallService;->access$800(Lcom/miui/vsimcore/service/DemandCallService;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5

    .line 193
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string v0, "VSC-DemandCallService"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$2;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # getter for: Lcom/miui/vsimcore/service/DemandCallService;->lock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/miui/vsimcore/service/DemandCallService;->access$700(Lcom/miui/vsimcore/service/DemandCallService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 196
    :try_start_20
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService$2;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    const-string v1, "RESULT_KEY"

    const-string v2, "RESULT_VALUE_LOST"

    # invokes: Lcom/miui/vsimcore/service/DemandCallService;->notifyToClient(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/miui/vsimcore/service/DemandCallService;->access$800(Lcom/miui/vsimcore/service/DemandCallService;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2b

    throw v0
.end method
