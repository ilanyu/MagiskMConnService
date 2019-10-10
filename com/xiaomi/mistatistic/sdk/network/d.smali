.class public Lcom/xiaomi/mistatistic/sdk/network/d;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 4

    .line 417
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:Ljava/lang/String;

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:I

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Z

    .line 37
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    .line 418
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->b:J

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/network/d;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .line 522
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/network/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/network/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    if-nez v1, :cond_1e

    if-eqz v0, :cond_1e

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 496
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/network/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 497
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/network/d$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/network/d$1;-><init>(Lcom/xiaomi/mistatistic/sdk/network/d;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    .line 507
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Z

    if-eqz v0, :cond_e

    goto :goto_33

    .line 510
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    if-nez v1, :cond_31

    if-eqz v0, :cond_31

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_35

    if-nez v1, :cond_31

    .line 513
    :try_start_20
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b
    .catchall {:try_start_20 .. :try_end_2a} :catchall_35

    goto :goto_31

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v1, "can not get ip exception:"

    .line 516
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_35

    .line 519
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 508
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    .line 506
    monitor-exit p0

    throw v0
.end method

.method private e()I
    .registers 3

    .line 529
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 530
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:I

    return v0

    .line 534
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    :catch_f
    return v1
.end method

.method private declared-synchronized f()V
    .registers 5

    monitor-enter p0

    .line 541
    :try_start_1
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    .line 543
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->b:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 545
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    .line 540
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .registers 6

    monitor-enter p0

    .line 548
    :try_start_1
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->d:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 551
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    .line 547
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 468
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->b()V

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 423
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->b:J

    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .registers 9

    .line 484
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Z

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Z

    .line 486
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->e()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/data/b;->d(Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/data/b;->c(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    :cond_34
    return-void
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 9

    .line 472
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Z

    if-nez v0, :cond_38

    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Z

    .line 474
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->b:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    .line 475
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->e()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JJI)V

    .line 476
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/b;->d(Ljava/lang/String;)V

    .line 477
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/b;->a(J)V

    .line 478
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/b;->c(Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    :cond_38
    return-void
.end method

.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 442
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 443
    throw v0
.end method

.method public disconnect()V
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 429
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->b()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 195
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 196
    throw p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->f()V

    .line 292
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/e;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/network/e;-><init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/InputStream;)V

    .line 293
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->g()V

    .line 294
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->c()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 297
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->d()V

    .line 298
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 299
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->f()V

    .line 312
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/f;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/network/f;-><init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/OutputStream;)V

    .line 313
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->g()V

    .line 314
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->c()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 317
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->d()V

    .line 318
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 319
    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0
    :try_end_6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 45
    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 91
    throw v0
.end method

.method public getReadTimeout()I
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->f()V

    .line 105
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:I

    .line 106
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->g()V

    .line 107
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 110
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 120
    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 462
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 463
    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .registers 9

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setFixedLengthStreamingMode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p1

    .line 162
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3

    .line 399
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 130
    throw p1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "x-mistats-header"

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 373
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:Ljava/lang/String;

    .line 375
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
