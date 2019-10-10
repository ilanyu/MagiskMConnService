.class public abstract Lcom/xiaomi/accountsdk/futureservice/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IServiceType:",
        "Ljava/lang/Object;",
        "ServerDataType:",
        "Ljava/lang/Object;",
        "ClientDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIServiceType;"
        }
    .end annotation
.end field

.field private volatile h:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
            "TServerDataType;TClientDataType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/futureservice/b;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
            "TServerDataType;TClientDataType;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->f:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/xiaomi/accountsdk/futureservice/b;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/xiaomi/accountsdk/futureservice/b;->c:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/xiaomi/accountsdk/futureservice/b;->h:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/futureservice/b;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/b;->e()V

    return-void
.end method

.method static a(Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 132
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method private e()V
    .registers 3

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/b;->d()Ljava/lang/Object;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->h:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    if-eqz v1, :cond_18

    .line 116
    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->h:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->a(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_18

    :catch_e
    move-exception v0

    .line 119
    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->h:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    if-eqz v1, :cond_18

    .line 120
    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->h:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->a(Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->g:Ljava/lang/Object;

    .line 127
    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->f:Landroid/content/Context;

    .line 128
    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->h:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TIServiceType;"
        }
    .end annotation
.end method

.method public final a()Z
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/futureservice/b;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->f:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_2c

    .line 63
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_33

    .line 65
    :cond_2c
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "failed to bind to service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 67
    :goto_33
    iget-object v2, p0, Lcom/xiaomi/accountsdk/futureservice/b;->h:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->a(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/b;->c()V

    :cond_3b
    return v0

    .line 53
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should only bind for one time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIServiceType;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method final c()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/futureservice/b;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->f:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 106
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/b;->f:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    :cond_12
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/b;->f()V

    return-void
.end method

.method protected abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TServerDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 76
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/futureservice/b;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/b;->g:Ljava/lang/Object;

    .line 77
    sget-object p1, Lcom/xiaomi/accountsdk/futureservice/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;-><init>(Lcom/xiaomi/accountsdk/futureservice/b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 91
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/b;->f()V

    return-void
.end method
