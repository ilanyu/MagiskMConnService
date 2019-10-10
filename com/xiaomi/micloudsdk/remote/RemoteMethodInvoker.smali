.class public abstract Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RemoteMethodInvoker"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->c:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    if-eqz p1, :cond_13

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->b:Landroid/content/Context;

    return-void

    .line 23
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/s;->b()V

    .line 41
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->b:Landroid/content/Context;

    invoke-virtual {p0, v0, p0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 43
    :try_start_c
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->c:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 44
    invoke-virtual {p0, v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_18} :catch_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_18} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_20
    .catchall {:try_start_c .. :try_end_18} :catchall_1e

    .line 54
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->b:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    :catchall_1e
    move-exception v0

    goto :goto_36

    :catch_20
    move-exception v0

    :try_start_21
    const-string v2, "RemoteMethodInvoker"

    const-string v3, "error while invoking service methods"

    .line 51
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 54
    :catch_28
    :goto_28
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    .line 46
    :catch_2e
    :try_start_2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_1e

    goto :goto_28

    .line 54
    :goto_36
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->b:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_3c
    const-string v0, "RemoteMethodInvoker"

    const-string v2, "Cannot bind remote service."

    .line 57
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected abstract a(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string v0, "RemoteMethodInvoker"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteMethodInvoker connects remote service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->c:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    invoke-virtual {p1, p2}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
