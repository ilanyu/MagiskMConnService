.class Lcom/xiaomi/micloudsdk/sync/a;
.super Lcom/xiaomi/micloudsdk/sync/g;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "sync_log_key_authority"

.field private static final c:Ljava/lang/String; = "sync_log_key_remote_logger"

.field private static final d:Ljava/lang/String; = "OPEN_SYNC_LOG"

.field private static final e:J = 0x2710L


# instance fields
.field private final f:Landroid/content/ContentProviderClient;

.field private final g:Ljava/lang/String;

.field private h:Lmiui/cloud/sync/IRemoteFileSyncLogger;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/sync/g;-><init>()V

    if-eqz p1, :cond_a

    .line 31
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/a;->f:Landroid/content/ContentProviderClient;

    .line 32
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/a;->g:Ljava/lang/String;

    return-void

    .line 29
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must give a valid provider client."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()V
    .registers 5

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sync_log_key_authority"

    .line 38
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 41
    :try_start_d
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/a;->f:Landroid/content/ContentProviderClient;

    const-string v3, "OPEN_SYNC_LOG"

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sync_log_key_remote_logger"

    .line 42
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    const-string v0, "SyncLogSender"

    const-string v2, "open sync log: server is died."

    .line 45
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_24
    if-nez v0, :cond_33

    const-string v0, "SyncLogSender"

    const-string v1, "open sync log: binder is null."

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/a;->f:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_39

    .line 51
    :cond_33
    invoke-static {v0}, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;->a(Landroid/os/IBinder;)Lmiui/cloud/sync/IRemoteFileSyncLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/a;->h:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    :goto_39
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/a;->h:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    if-nez v0, :cond_8

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/a;->h:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    invoke-interface {v0, p1, p2}, Lmiui/cloud/sync/IRemoteFileSyncLogger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_18

    :catch_e
    const-string v0, "SyncLogSender"

    const-string v1, "send log: server is died."

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method

.method b()V
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/a;->h:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    if-nez v0, :cond_5

    return-void

    .line 75
    :cond_5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v1, 0x0

    .line 77
    :try_start_c
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/a;->h:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    new-instance v3, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;-><init>(Lcom/xiaomi/micloudsdk/sync/a;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Lmiui/cloud/sync/IRemoteFileSyncLogger;->a(Landroid/os/ResultReceiver;)V

    const-wide/16 v2, 0x2710

    .line 83
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "SyncLogSender"

    const-string v2, "Too long to wait for releasing provider. Release now."

    .line 85
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_27} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_27} :catch_28

    goto :goto_3e

    :catch_28
    const-string v0, "SyncLogSender"

    const-string v2, "Release is interrupted by cancel sync."

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3e

    :catch_37
    const-string v0, "SyncLogSender"

    const-string v2, "Remote sync provider is died! Release now."

    .line 89
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/a;->f:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 96
    iput-object v1, p0, Lcom/xiaomi/micloudsdk/sync/a;->h:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    return-void
.end method
