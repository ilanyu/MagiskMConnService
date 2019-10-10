.class Lcom/android/volley/CacheDispatcher$WaitingRequestManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Request$NetworkRequestCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/CacheDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitingRequestManager"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/volley/Request<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/volley/CacheDispatcher;


# direct methods
.method constructor <init>(Lcom/android/volley/CacheDispatcher;)V
    .registers 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a:Ljava/util/Map;

    .line 214
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->b:Lcom/android/volley/CacheDispatcher;

    return-void
.end method

.method static synthetic a(Lcom/android/volley/CacheDispatcher$WaitingRequestManager;Lcom/android/volley/Request;)Z
    .registers 2

    .line 197
    invoke-direct {p0, p1}, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->b(Lcom/android/volley/Request;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized b(Lcom/android/volley/Request;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 277
    :try_start_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->g()Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 282
    iget-object v1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1e

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    const-string v4, "waiting-for-response"

    .line 286
    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 287
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object p1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-boolean p1, Lcom/android/volley/VolleyLog;->b:Z

    if-eqz p1, :cond_38

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    .line 290
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_52

    .line 292
    :cond_38
    monitor-exit p0

    return v2

    .line 296
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V

    .line 298
    sget-boolean p1, Lcom/android/volley/VolleyLog;->b:Z

    if-eqz p1, :cond_50

    const-string p1, "new request, sending to network %s"

    .line 299
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_52

    .line 301
    :cond_50
    monitor-exit p0

    return v3

    :catchall_52
    move-exception p1

    .line 276
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/android/volley/Request;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->g()Ljava/lang/String;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_61

    .line 247
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 248
    sget-boolean v1, Lcom/android/volley/VolleyLog;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    .line 249
    new-array v4, v4, [Ljava/lang/Object;

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    .line 249
    invoke-static {v1, v4}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_2f
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/Request;

    .line 254
    iget-object v4, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v1, p0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_63

    .line 257
    :try_start_3d
    iget-object p1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->b:Lcom/android/volley/CacheDispatcher;

    invoke-static {p1}, Lcom/android/volley/CacheDispatcher;->a(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_46} :catch_47
    .catchall {:try_start_3d .. :try_end_46} :catchall_63

    goto :goto_61

    :catch_47
    move-exception p1

    :try_start_48
    const-string v0, "Couldn\'t add request to queue. %s"

    .line 259
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 263
    iget-object p1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->b:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {p1}, Lcom/android/volley/CacheDispatcher;->a()V
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_63

    .line 266
    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    .line 244
    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    if-eqz v0, :cond_55

    iget-object v0, p2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_55

    .line 224
    :cond_d
    invoke-virtual {p1}, Lcom/android/volley/Request;->g()Ljava/lang/String;

    move-result-object p1

    .line 226
    monitor-enter p0

    .line 227
    :try_start_12
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 228
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_52

    if-eqz v0, :cond_51

    .line 230
    sget-boolean v1, Lcom/android/volley/VolleyLog;->b:Z

    if-eqz v1, :cond_37

    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v2, 0x2

    .line 231
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 231
    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 237
    iget-object v1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->b:Lcom/android/volley/CacheDispatcher;

    invoke-static {v1}, Lcom/android/volley/CacheDispatcher;->b(Lcom/android/volley/CacheDispatcher;)Lcom/android/volley/m;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/volley/m;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_3b

    :cond_51
    return-void

    :catchall_52
    move-exception p1

    .line 228
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1

    .line 221
    :cond_55
    :goto_55
    invoke-virtual {p0, p1}, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->a(Lcom/android/volley/Request;)V

    return-void
.end method
