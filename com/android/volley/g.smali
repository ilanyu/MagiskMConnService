.class public Lcom/android/volley/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/volley/f;

.field private final c:Lcom/android/volley/Cache;

.field private final d:Lcom/android/volley/m;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/f;Lcom/android/volley/Cache;Lcom/android/volley/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Lcom/android/volley/f;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/m;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/volley/g;->e:Z

    .line 62
    iput-object p1, p0, Lcom/android/volley/g;->a:Ljava/util/concurrent/BlockingQueue;

    .line 63
    iput-object p2, p0, Lcom/android/volley/g;->b:Lcom/android/volley/f;

    .line 64
    iput-object p3, p0, Lcom/android/volley/g;->c:Lcom/android/volley/Cache;

    .line 65
    iput-object p4, p0, Lcom/android/volley/g;->d:Lcom/android/volley/m;

    return-void
.end method

.method private a(Lcom/android/volley/Request;Lcom/android/volley/q;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/q;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->a(Lcom/android/volley/q;)Lcom/android/volley/q;

    move-result-object p2

    .line 172
    iget-object v0, p0, Lcom/android/volley/g;->d:Lcom/android/volley/m;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/m;->a(Lcom/android/volley/Request;Lcom/android/volley/q;)V

    return-void
.end method

.method private b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/volley/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/volley/g;->a(Lcom/android/volley/Request;)V

    return-void
.end method

.method private b(Lcom/android/volley/Request;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    .line 81
    invoke-virtual {p1}, Lcom/android/volley/Request;->d()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/volley/g;->e:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/volley/g;->interrupt()V

    return-void
.end method

.method a(Lcom/android/volley/Request;)V
    .registers 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_4
    const-string v2, "network-queue-take"

    .line 118
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/android/volley/Request;->j()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "network-discard-cancelled"

    .line 123
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/volley/Request;->A()V

    return-void

    .line 128
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/volley/g;->b(Lcom/android/volley/Request;)V

    .line 131
    iget-object v2, p0, Lcom/android/volley/g;->b:Lcom/android/volley/f;

    invoke-interface {v2, p1}, Lcom/android/volley/f;->a(Lcom/android/volley/Request;)Lcom/android/volley/i;

    move-result-object v2

    const-string v3, "network-http-complete"

    .line 132
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 136
    iget-boolean v3, v2, Lcom/android/volley/i;->e:Z

    if-eqz v3, :cond_39

    invoke-virtual {p1}, Lcom/android/volley/Request;->z()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v2, "not-modified"

    .line 137
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/android/volley/Request;->A()V

    return-void

    .line 143
    :cond_39
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a(Lcom/android/volley/i;)Lcom/android/volley/Response;

    move-result-object v2

    const-string v3, "network-parse-complete"

    .line 144
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/volley/Request;->t()Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, v2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    if-eqz v3, :cond_5c

    .line 149
    iget-object v3, p0, Lcom/android/volley/g;->c:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/android/volley/Request;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    invoke-interface {v3, v4, v5}, Lcom/android/volley/Cache;->a(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    const-string v3, "network-cache-written"

    .line 150
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 154
    :cond_5c
    invoke-virtual {p1}, Lcom/android/volley/Request;->y()V

    .line 155
    iget-object v3, p0, Lcom/android/volley/g;->d:Lcom/android/volley/m;

    invoke-interface {v3, p1, v2}, Lcom/android/volley/m;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 156
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a(Lcom/android/volley/Response;)V
    :try_end_67
    .catch Lcom/android/volley/q; {:try_start_4 .. :try_end_67} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_67} :catch_68

    goto :goto_9d

    :catch_68
    move-exception v2

    const-string v3, "Unhandled exception %s"

    const/4 v4, 0x1

    .line 162
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v3, Lcom/android/volley/q;

    invoke-direct {v3, v2}, Lcom/android/volley/q;-><init>(Ljava/lang/Throwable;)V

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/volley/q;->a(J)V

    .line 165
    iget-object v0, p0, Lcom/android/volley/g;->d:Lcom/android/volley/m;

    invoke-interface {v0, p1, v3}, Lcom/android/volley/m;->a(Lcom/android/volley/Request;Lcom/android/volley/q;)V

    .line 166
    invoke-virtual {p1}, Lcom/android/volley/Request;->A()V

    goto :goto_9d

    :catch_8e
    move-exception v2

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/q;->a(J)V

    .line 159
    invoke-direct {p0, p1, v2}, Lcom/android/volley/g;->a(Lcom/android/volley/Request;Lcom/android/volley/q;)V

    .line 160
    invoke-virtual {p1}, Lcom/android/volley/Request;->A()V

    :goto_9d
    return-void
.end method

.method public run()V
    .registers 3

    const/16 v0, 0xa

    .line 87
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/android/volley/g;->b()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    .line 93
    :catch_9
    iget-boolean v0, p0, Lcom/android/volley/g;->e:Z

    if-eqz v0, :cond_15

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_15
    const-string v0, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    const/4 v1, 0x0

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
