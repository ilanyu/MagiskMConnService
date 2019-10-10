.class public Lcom/android/volley/RequestQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/RequestQueue$RequestFilter;,
        Lcom/android/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final e:I = 0x4


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/android/volley/Cache;

.field private final g:Lcom/android/volley/f;

.field private final h:Lcom/android/volley/m;

.field private final i:[Lcom/android/volley/g;

.field private j:Lcom/android/volley/CacheDispatcher;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/f;)V
    .registers 4

    const/4 v0, 0x4

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/f;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/f;I)V
    .registers 7

    .line 105
    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 105
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/f;ILcom/android/volley/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/f;ILcom/android/volley/m;)V
    .registers 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 59
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->k:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/android/volley/RequestQueue;->f:Lcom/android/volley/Cache;

    .line 92
    iput-object p2, p0, Lcom/android/volley/RequestQueue;->g:Lcom/android/volley/f;

    .line 93
    new-array p1, p3, [Lcom/android/volley/g;

    iput-object p1, p0, Lcom/android/volley/RequestQueue;->i:[Lcom/android/volley/g;

    .line 94
    iput-object p4, p0, Lcom/android/volley/RequestQueue;->h:Lcom/android/volley/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation

    .line 208
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->a(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;

    .line 209
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    monitor-enter v0

    .line 210
    :try_start_6
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_2a

    .line 214
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(I)Lcom/android/volley/Request;

    const-string v0, "add-to-queue"

    .line 215
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lcom/android/volley/Request;->t()Z

    move-result v0

    if-nez v0, :cond_24

    .line 219
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 222
    :cond_24
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_2a
    move-exception p1

    .line 211
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public a()V
    .registers 7

    .line 124
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->b()V

    .line 126
    new-instance v0, Lcom/android/volley/CacheDispatcher;

    iget-object v1, p0, Lcom/android/volley/RequestQueue;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->f:Lcom/android/volley/Cache;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->h:Lcom/android/volley/m;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/m;)V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->j:Lcom/android/volley/CacheDispatcher;

    .line 127
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->j:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    .line 130
    :goto_18
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->i:[Lcom/android/volley/g;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 131
    new-instance v1, Lcom/android/volley/g;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->g:Lcom/android/volley/f;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->f:Lcom/android/volley/Cache;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->h:Lcom/android/volley/m;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/g;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/f;Lcom/android/volley/Cache;Lcom/android/volley/m;)V

    .line 133
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->i:[Lcom/android/volley/g;

    aput-object v1, v2, v0

    .line 134
    invoke-virtual {v1}, Lcom/android/volley/g;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_34
    return-void
.end method

.method public a(Lcom/android/volley/RequestQueue$RequestFilter;)V
    .registers 6

    .line 174
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;

    .line 176
    invoke-interface {p1, v2}, Lcom/android/volley/RequestQueue$RequestFilter;->a(Lcom/android/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 177
    invoke-virtual {v2}, Lcom/android/volley/Request;->i()V

    goto :goto_9

    .line 180
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public a(Lcom/android/volley/RequestQueue$RequestFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->k:Ljava/util/List;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 191
    new-instance v0, Lcom/android/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/RequestQueue$1;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->a(Lcom/android/volley/RequestQueue$RequestFilter;)V

    return-void

    .line 189
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->j:Lcom/android/volley/CacheDispatcher;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->j:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->a()V

    .line 143
    :cond_9
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->i:[Lcom/android/volley/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    if-eqz v3, :cond_16

    .line 145
    invoke-virtual {v3}, Lcom/android/volley/g;->a()V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method b(Lcom/android/volley/Request;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    .line 236
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->k:Ljava/util/List;

    monitor-enter v1

    .line 237
    :try_start_c
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/RequestQueue$RequestFinishedListener;

    .line 238
    invoke-interface {v2, p1}, Lcom/android/volley/RequestQueue$RequestFinishedListener;->a(Lcom/android/volley/Request;)V

    goto :goto_12

    .line 240
    :cond_22
    monitor-exit v1

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw p1

    :catchall_27
    move-exception p1

    .line 235
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public b(Lcom/android/volley/RequestQueue$RequestFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->k:Ljava/util/List;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 253
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public c()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public d()Lcom/android/volley/Cache;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->f:Lcom/android/volley/Cache;

    return-object v0
.end method
