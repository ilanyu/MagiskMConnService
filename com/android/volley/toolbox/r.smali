.class public Lcom/android/volley/toolbox/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lcom/android/volley/q;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    return-void
.end method

.method public static a()Lcom/android/volley/toolbox/r;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/volley/toolbox/r<",
            "TE;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/android/volley/toolbox/r;

    invoke-direct {v0}, Lcom/android/volley/toolbox/r;-><init>()V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/q;

    if-nez v0, :cond_5b

    .line 106
    iget-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-eqz v0, :cond_d

    .line 107
    iget-object p1, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_63

    monitor-exit p0

    return-object p1

    :cond_d
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1b

    .line 111
    :goto_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/volley/toolbox/r;->isDone()Z

    move-result p1

    if-nez p1, :cond_41

    .line 112
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_11

    .line 114
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_41

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x0

    add-long/2addr v2, v0

    .line 117
    :goto_2d
    invoke-virtual {p0}, Lcom/android/volley/toolbox/r;->isDone()Z

    move-result p1

    if-nez p1, :cond_41

    cmp-long p1, v0, v2

    if-gez p1, :cond_41

    sub-long v0, v2, v0

    .line 118
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_2d

    .line 123
    :cond_41
    iget-object p1, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/q;

    if-nez p1, :cond_53

    .line 127
    iget-boolean p1, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-eqz p1, :cond_4d

    .line 131
    iget-object p1, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_63

    monitor-exit p0

    return-object p1

    .line 128
    :cond_4d
    :try_start_4d
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 124
    :cond_53
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/q;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 103
    :cond_5b
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/q;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p1

    .line 101
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;

    return-void
.end method

.method public declared-synchronized a(Lcom/android/volley/q;)V
    .registers 2

    monitor-enter p0

    .line 156
    :try_start_1
    iput-object p1, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/q;

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 158
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    .line 155
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 149
    :try_start_2
    iput-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    .line 150
    iput-object p1, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 152
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    .line 148
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel(Z)Z
    .registers 3

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object p1, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 74
    monitor-exit p0

    return v0

    .line 77
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/volley/toolbox/r;->isDone()Z

    move-result p1

    if-nez p1, :cond_16

    .line 78
    iget-object p1, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->i()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_18

    const/4 p1, 0x1

    .line 79
    monitor-exit p0

    return p1

    .line 81
    :cond_16
    monitor-exit p0

    return v0

    :catchall_18
    move-exception p1

    .line 72
    monitor-exit p0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/r;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/r;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->j()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 144
    :try_start_1
    iget-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/q;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/volley/toolbox/r;->isCancelled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
