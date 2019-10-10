.class public Lmiui/cloud/common/XBlockCallback;
.super Lmiui/cloud/common/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XBlockCallback$CallbackRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cloud/common/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/locks/ReentrantLock;

.field private b:Ljava/util/concurrent/locks/Condition;

.field private c:Ljava/util/concurrent/locks/Condition;

.field private d:Lmiui/cloud/common/XBlockCallback$CallbackRequest;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lmiui/cloud/common/c;-><init>(Ljava/lang/Class;)V

    .line 70
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->b:Ljava/util/concurrent/locks/Condition;

    .line 73
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->c:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 52
    :goto_5
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->d:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    if-eqz v0, :cond_14

    .line 53
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 54
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5

    .line 57
    :cond_14
    new-instance v0, Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    invoke-direct {v0, p1, p2}, Lmiui/cloud/common/XBlockCallback$CallbackRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/cloud/common/XBlockCallback;->d:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 59
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_20} :catch_23
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    goto :goto_2e

    :catchall_21
    move-exception p1

    goto :goto_35

    :catch_23
    const/4 p1, 0x1

    .line 62
    :try_start_24
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "Interrupted while waiting for callback handlers. "

    aput-object v0, p1, p2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_21

    .line 64
    :goto_2e
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :goto_35
    iget-object p2, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 17
    :try_start_0
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 19
    :goto_5
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->d:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    if-nez v0, :cond_14

    .line 20
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 21
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_51

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 25
    :try_start_16
    iget-object v2, p0, Lmiui/cloud/common/XBlockCallback;->d:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    iget-object v2, v2, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->a:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lmiui/cloud/common/XBlockCallback;->d:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    iget-object v3, v3, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->b:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_21} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_21} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_21} :catch_22
    .catchall {:try_start_16 .. :try_end_21} :catchall_51

    goto :goto_43

    :catch_22
    move-exception p1

    const/4 v2, 0x2

    .line 33
    :try_start_24
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Exception in callback, but unable to propagate to the original thread. "

    aput-object v3, v2, v0

    aput-object p1, v2, v1

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V

    goto :goto_43

    .line 29
    :catch_30
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Bad callback. "

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V

    goto :goto_43

    .line 27
    :catch_3a
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Bad callback. "

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V

    :goto_43
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->d:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 38
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_51

    .line 41
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_51
    move-exception p1

    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
