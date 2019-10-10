.class public Lcn/kuaipan/android/kss/upload/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# static fields
.field public static volatile W:Z = false

.field private static final X:Ljava/lang/String; = "KssUploader"

.field private static final Y:J = 0x1388L


# instance fields
.field private final Z:Ljava/util/zip/CRC32;

.field private final aa:[B

.field private final ab:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

.field private final ac:Lcn/kuaipan/android/http/g;

.field private ad:J


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/g;Lcn/kuaipan/android/kss/upload/UploadTaskStore;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->Z:Ljava/util/zip/CRC32;

    const/16 v0, 0x2000

    .line 50
    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->aa:[B

    const-wide/32 v0, 0x10000

    .line 55
    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/c;->ad:J

    .line 59
    iput-object p2, p0, Lcn/kuaipan/android/kss/upload/c;->ab:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    .line 60
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/c;->ac:Lcn/kuaipan/android/http/g;

    return-void
.end method

.method private declared-synchronized a(Ljava/io/InputStream;J)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 541
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->Z:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :goto_6
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_28

    .line 544
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->aa:[B

    iget-object v1, p0, Lcn/kuaipan/android/kss/upload/c;->aa:[B

    array-length v1, v1

    int-to-long v1, v1

    .line 545
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_28

    int-to-long v3, v0

    sub-long/2addr p2, v3

    .line 547
    iget-object v1, p0, Lcn/kuaipan/android/kss/upload/c;->Z:Ljava/util/zip/CRC32;

    iget-object v3, p0, Lcn/kuaipan/android/kss/upload/c;->aa:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_6

    .line 550
    :cond_28
    iget-object p1, p0, Lcn/kuaipan/android/kss/upload/c;->Z:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_31

    long-to-int p1, p1

    monitor-exit p0

    return p1

    :catchall_31
    move-exception p1

    .line 540
    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/net/Uri;JLcn/kuaipan/android/utils/p;Lcn/kuaipan/android/kss/e;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/upload/b;)Lcn/kuaipan/android/kss/upload/e;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 331
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-direct {v12, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :goto_e
    const/4 v0, 0x0

    .line 332
    :goto_f
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_157

    .line 333
    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/utils/p;->reset()V

    .line 334
    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/utils/p;->available()I

    move-result v0

    int-to-long v0, v0

    add-long v0, v0, p2

    const-wide/32 v2, 0x400000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_35

    const-string v0, "KssUploader"

    const-string v1, "blockSize<0, adjust blockSize to 4M"

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v14, v2

    goto :goto_36

    :cond_35
    move-wide v14, v0

    .line 339
    :goto_36
    iget-wide v0, v8, Lcn/kuaipan/android/kss/upload/c;->ad:J

    sub-long v2, v14, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 342
    invoke-virtual/range {p8 .. p8}, Lcn/kuaipan/android/kss/upload/b;->i()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-object/from16 v7, p8

    .line 344
    iget-object v2, v7, Lcn/kuaipan/android/kss/upload/b;->X:Lcn/kuaipan/android/kss/upload/d;

    if-eqz v2, :cond_9b

    .line 346
    invoke-virtual {v2}, Lcn/kuaipan/android/kss/upload/d;->a()V

    .line 347
    iget-wide v6, v2, Lcn/kuaipan/android/kss/upload/d;->Y:J

    cmp-long v3, v6, v4

    const/4 v6, 0x0

    if-lez v3, :cond_78

    .line 348
    iget-wide v4, v2, Lcn/kuaipan/android/kss/upload/d;->Y:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-string v5, "KssUploader"

    const-string v7, "Adjust chunk size from %d to %d"

    const/4 v13, 0x2

    .line 350
    new-array v13, v13, [Ljava/lang/Object;

    .line 351
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v13, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v13, v1

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v3

    :cond_78
    const/4 v7, 0x1

    .line 356
    iget v3, v2, Lcn/kuaipan/android/kss/upload/d;->X:I

    if-lez v3, :cond_9c

    const-string v3, "KssUploader"

    const-string v4, "Sleeping for delay %d(s)"

    .line 358
    new-array v5, v7, [Ljava/lang/Object;

    iget v13, v2, Lcn/kuaipan/android/kss/upload/d;->X:I

    .line 359
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v2, v2, Lcn/kuaipan/android/kss/upload/d;->X:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_9c

    :cond_9b
    const/4 v7, 0x1

    :cond_9c
    :goto_9c
    move-wide v4, v0

    .line 365
    new-instance v0, Lcn/kuaipan/android/http/b;

    const/16 v1, 0x2000

    invoke-direct {v0, v9, v10, v1}, Lcn/kuaipan/android/http/b;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/c;I)V

    .line 368
    invoke-direct {v8, v0, v4, v5}, Lcn/kuaipan/android/kss/upload/c;->a(Ljava/io/InputStream;J)I

    move-result v0

    int-to-long v2, v0

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v6, "body_sum"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 371
    invoke-virtual/range {p4 .. p4}, Lcn/kuaipan/android/utils/p;->reset()V

    .line 372
    new-instance v3, Lcn/kuaipan/android/http/b;

    invoke-direct {v3, v9, v10, v1}, Lcn/kuaipan/android/http/b;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/c;I)V

    if-eqz v11, :cond_ce

    const-wide/16 v0, 0x0

    .line 376
    :try_start_c7
    invoke-interface {v11, v0, v1}, Lcn/kuaipan/android/http/IKscTransferListener;->c(J)V
    :try_end_ca
    .catch Lcn/kuaipan/android/a/e; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_ce

    :catch_cb
    move-exception v0

    const/4 v13, 0x1

    goto :goto_12b

    :cond_ce
    :goto_ce
    move-object/from16 v1, p0

    move-wide/from16 v16, v4

    const/4 v13, 0x1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 378
    :try_start_d7
    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/upload/c;->a(Landroid/net/Uri;Ljava/io/InputStream;JLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;)Lcn/kuaipan/android/kss/upload/e;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/e;->b()Z

    move-result v1

    if-nez v1, :cond_10f

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/e;->a()Z

    move-result v1

    if-eqz v1, :cond_e8

    goto :goto_10f

    .line 387
    :cond_e8
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/upload/e;->c()Z

    move-result v1

    if-eqz v1, :cond_10e

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_10e

    const-string v1, "KssUploader"

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload needChunkRetry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_10e
    return-object v0

    :cond_10f
    :goto_10f
    move-object v1, v0

    move-wide/from16 v2, p2

    move-wide/from16 v4, v16

    move-wide v6, v14

    .line 380
    invoke-static/range {v1 .. v7}, Lcn/kuaipan/android/kss/upload/c;->a(Lcn/kuaipan/android/kss/upload/e;JJJ)V

    .line 381
    iget-wide v1, v8, Lcn/kuaipan/android/kss/upload/c;->ad:J

    cmp-long v1, v16, v1

    if-ltz v1, :cond_157

    .line 382
    sget-wide v1, Lcn/kuaipan/android/kss/upload/c;->f:J

    iget-wide v3, v8, Lcn/kuaipan/android/kss/upload/c;->ad:J

    shl-long/2addr v3, v13

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v8, Lcn/kuaipan/android/kss/upload/c;->ad:J
    :try_end_129
    .catch Lcn/kuaipan/android/a/e; {:try_start_d7 .. :try_end_129} :catch_12a

    goto :goto_157

    :catch_12a
    move-exception v0

    .line 393
    :goto_12b
    invoke-static {v0}, Lcn/kuaipan/android/a/b;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_156

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_156

    const-wide/32 v0, 0x10000

    .line 394
    iget-wide v2, v8, Lcn/kuaipan/android/kss/upload/c;->ad:J

    shr-long/2addr v2, v13

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Lcn/kuaipan/android/kss/upload/c;->ad:J

    .line 398
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_150

    const-wide/16 v0, 0x1388

    .line 401
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_e

    .line 399
    :cond_150
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 403
    :cond_156
    throw v0

    :cond_157
    :goto_157
    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/io/InputStream;JLcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;)Lcn/kuaipan/android/kss/upload/e;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 422
    :try_start_1
    new-instance v0, Lcn/kuaipan/android/http/KscHttpRequest;

    sget-object v2, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->b:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    .line 423
    new-instance v2, Lcn/kuaipan/android/kss/upload/a;

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct {v2, v4, v5, v6}, Lcn/kuaipan/android/kss/upload/a;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v2}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Lorg/apache/http/entity/AbstractHttpEntity;)V

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_a3

    move-object/from16 v2, p0

    .line 426
    :try_start_1e
    iget-object v6, v2, Lcn/kuaipan/android/kss/upload/c;->ac:Lcn/kuaipan/android/http/g;

    const/4 v7, 0x4

    move-object/from16 v8, p6

    invoke-virtual {v6, v0, v7, v8}, Lcn/kuaipan/android/http/g;->a(Lcn/kuaipan/android/http/KscHttpRequest;ILcn/kuaipan/android/http/KssTransferStopper;)Lcn/kuaipan/android/http/f;

    move-result-object v0

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long v11, v6, v4

    const-wide/16 v4, 0x0

    .line 430
    invoke-virtual {v0}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 431
    invoke-virtual {v0}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 433
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    :cond_44
    move-wide v13, v4

    .line 436
    invoke-virtual {v0}, Lcn/kuaipan/android/http/f;->d()I

    move-result v4

    const-string v5, ""

    .line 438
    invoke-virtual {v0}, Lcn/kuaipan/android/http/f;->a()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_5d

    .line 439
    invoke-virtual {v0}, Lcn/kuaipan/android/http/f;->a()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    :cond_5d
    move-object/from16 v16, v5

    .line 441
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    move v15, v4

    invoke-virtual/range {v9 .. v16}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a(Ljava/lang/String;JJILjava/lang/String;)V

    .line 442
    invoke-static {v0}, Lcn/kuaipan/android/a/b;->a(Lcn/kuaipan/android/http/f;)V

    const/16 v3, 0xc8

    if-ne v4, v3, :cond_90

    .line 452
    invoke-static {v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Lcn/kuaipan/android/http/f;)Ljava/util/Map;

    move-result-object v3
    :try_end_76
    .catchall {:try_start_1e .. :try_end_76} :catchall_a1

    .line 453
    :try_start_76
    new-instance v1, Lcn/kuaipan/android/kss/upload/e;

    invoke-direct {v1, v3}, Lcn/kuaipan/android/kss/upload/e;-><init>(Ljava/util/Map;)V

    .line 454
    invoke-static {v0}, Lcn/kuaipan/android/kss/upload/d;->a(Lcn/kuaipan/android/http/f;)Lcn/kuaipan/android/kss/upload/d;

    move-result-object v0

    iput-object v0, v1, Lcn/kuaipan/android/kss/upload/e;->ab:Lcn/kuaipan/android/kss/upload/d;
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_8d

    if-eqz v3, :cond_8c

    .line 457
    instance-of v0, v3, Lcn/kuaipan/android/utils/e;

    if-eqz v0, :cond_8c

    .line 458
    check-cast v3, Lcn/kuaipan/android/utils/e;

    invoke-interface {v3}, Lcn/kuaipan/android/utils/e;->a()V

    :cond_8c
    return-object v1

    :catchall_8d
    move-exception v0

    move-object v1, v3

    goto :goto_a6

    .line 445
    :cond_90
    :try_start_90
    new-instance v3, Lcn/kuaipan/android/a/i;

    invoke-virtual {v0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcn/kuaipan/android/a/i;-><init>(ILjava/lang/String;)V

    const-string v0, "KssUploader"

    const-string v4, "Exception in doUpload"

    .line 446
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    throw v3
    :try_end_a1
    .catchall {:try_start_90 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v0

    goto :goto_a6

    :catchall_a3
    move-exception v0

    move-object/from16 v2, p0

    :goto_a6
    if-eqz v1, :cond_b1

    .line 457
    instance-of v3, v1, Lcn/kuaipan/android/utils/e;

    if-eqz v3, :cond_b1

    .line 458
    check-cast v1, Lcn/kuaipan/android/utils/e;

    invoke-interface {v1}, Lcn/kuaipan/android/utils/e;->a()V

    :cond_b1
    throw v0
.end method

.method private a(Lcn/kuaipan/android/utils/p;Lcn/kuaipan/android/kss/e;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/upload/b;ILcn/kuaipan/android/kss/upload/e;)Lcn/kuaipan/android/kss/upload/e;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object/from16 v12, p7

    .line 278
    invoke-virtual/range {p5 .. p5}, Lcn/kuaipan/android/kss/upload/b;->b()Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object v13

    .line 279
    invoke-interface {v13}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->e()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c7

    .line 283
    array-length v0, v14

    if-lez v0, :cond_c7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v16, v1

    const/4 v15, 0x0

    .line 287
    :goto_18
    array-length v0, v14

    if-ge v15, v0, :cond_c6

    .line 288
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_c0

    const-wide/32 v0, 0x400000

    int-to-long v2, v11

    mul-long v2, v2, v0

    .line 292
    :try_start_27
    iget-wide v0, v12, Lcn/kuaipan/android/kss/upload/e;->X:J

    const/4 v4, 0x0

    add-long/2addr v2, v0

    invoke-virtual {v10, v2, v3}, Lcn/kuaipan/android/utils/p;->a(J)V

    const/high16 v0, 0x400000

    .line 293
    invoke-virtual {v10, v0}, Lcn/kuaipan/android/utils/p;->mark(I)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v14, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/upload_block_chunk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "chunk_pos"

    .line 297
    iget-wide v2, v12, Lcn/kuaipan/android/kss/upload/e;->X:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 298
    iget-object v1, v12, Lcn/kuaipan/android/kss/upload/e;->Z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "upload_id"

    .line 299
    iget-object v2, v12, Lcn/kuaipan/android/kss/upload/e;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_7d

    :cond_69
    const-string v1, "file_meta"

    .line 301
    invoke-interface {v13}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "block_meta"

    .line 302
    invoke-interface {v13, v11}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->a(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    move-result-object v2

    iget-object v2, v2, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 305
    :goto_7d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, v12, Lcn/kuaipan/android/kss/upload/e;->X:J

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcn/kuaipan/android/kss/upload/c;->a(Landroid/net/Uri;JLcn/kuaipan/android/utils/p;Lcn/kuaipan/android/kss/e;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/upload/b;)Lcn/kuaipan/android/kss/upload/e;

    move-result-object v1
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_93} :catch_a4

    .line 307
    :try_start_93
    iget-object v0, v1, Lcn/kuaipan/android/kss/upload/e;->ab:Lcn/kuaipan/android/kss/upload/d;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_95} :catch_9e

    move-object/from16 v2, p5

    :try_start_97
    iput-object v0, v2, Lcn/kuaipan/android/kss/upload/b;->X:Lcn/kuaipan/android/kss/upload/d;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_99} :catch_9c

    move-object/from16 v16, v1

    goto :goto_c6

    :catch_9c
    move-exception v0

    goto :goto_a1

    :catch_9e
    move-exception v0

    move-object/from16 v2, p5

    :goto_a1
    move-object/from16 v16, v1

    goto :goto_a7

    :catch_a4
    move-exception v0

    move-object/from16 v2, p5

    .line 310
    :goto_a7
    invoke-static {v0}, Lcn/kuaipan/android/a/b;->e(Ljava/lang/Throwable;)V

    .line 311
    invoke-static {v0}, Lcn/kuaipan/android/a/b;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_b9

    array-length v1, v14

    add-int/lit8 v1, v1, -0x1

    if-ge v15, v1, :cond_b9

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_18

    :cond_b9
    const-string v1, "Failed when upload a kss chunk."

    .line 312
    invoke-static {v0, v1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object v0

    throw v0

    .line 289
    :cond_c0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_c6
    :goto_c6
    return-object v16

    .line 284
    :cond_c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No available urls."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->ab:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_5

    return-void

    .line 476
    :cond_5
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->ab:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(I)V

    return-void
.end method

.method private a(ILcn/kuaipan/android/kss/upload/b;Lcn/kuaipan/android/kss/upload/f;)V
    .registers 5

    .line 465
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->ab:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_5

    return-void

    .line 468
    :cond_5
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->ab:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1, p2, p3}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(ILcn/kuaipan/android/kss/upload/b;Lcn/kuaipan/android/kss/upload/f;)V

    return-void
.end method

.method private a(ILjava/io/File;Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/upload/b;I)V
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move/from16 v12, p6

    .line 146
    invoke-direct/range {p0 .. p1}, Lcn/kuaipan/android/kss/upload/c;->b(I)Lcn/kuaipan/android/kss/upload/f;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 150
    iget-object v2, v1, Lcn/kuaipan/android/kss/upload/f;->b:Ljava/lang/String;

    .line 151
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 152
    iget-wide v3, v1, Lcn/kuaipan/android/kss/upload/f;->a:J

    goto :goto_1e

    :cond_1b
    const/4 v2, 0x0

    :cond_1c
    const-wide/16 v3, 0x0

    :goto_1e
    const-wide/32 v5, 0x10000

    .line 156
    rem-long v5, v3, v5

    sub-long/2addr v3, v5

    add-int/lit8 v1, v12, 0x1

    int-to-long v5, v1

    const-wide/32 v16, 0x400000

    mul-long v7, v5, v16

    cmp-long v1, v3, v7

    if-gez v1, :cond_37

    int-to-long v5, v12

    mul-long v5, v5, v16

    cmp-long v1, v3, v5

    if-gez v1, :cond_3a

    :cond_37
    int-to-long v3, v12

    mul-long v3, v3, v16

    .line 161
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 162
    invoke-virtual/range {p5 .. p5}, Lcn/kuaipan/android/kss/upload/b;->b()Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object v6

    const-string v1, "KssUploader"

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RC4 key:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->b()[B

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :try_start_64
    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {v15, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6a} :catch_1fd
    .catchall {:try_start_64 .. :try_end_6a} :catchall_1f9

    move-object/from16 v25, v2

    move-wide v4, v3

    const/4 v1, 0x0

    .line 171
    :goto_6e
    :try_start_6e
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ltz v2, :cond_1eb

    if-eqz v1, :cond_7a

    .line 173
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/p;->close()V

    const/4 v1, 0x0

    .line 176
    :cond_7a
    new-instance v3, Lcn/kuaipan/android/kss/e;

    invoke-interface {v6}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->b()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcn/kuaipan/android/kss/e;-><init>([B)V

    .line 177
    new-instance v2, Lcn/kuaipan/android/utils/p;

    move-object/from16 v13, p2

    invoke-direct {v2, v13}, Lcn/kuaipan/android/utils/p;-><init>(Ljava/io/File;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_8a} :catch_1f5
    .catchall {:try_start_6e .. :try_end_8a} :catchall_1f1

    .line 178
    :try_start_8a
    invoke-virtual {v2, v4, v5}, Lcn/kuaipan/android/utils/p;->a(J)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8d} :catch_1e5
    .catchall {:try_start_8a .. :try_end_8d} :catchall_1e1

    if-eqz v10, :cond_97

    .line 181
    :try_start_8f
    invoke-virtual {v10, v4, v5}, Lcn/kuaipan/android/kss/FileTranceListener;->d(J)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_93
    .catchall {:try_start_8f .. :try_end_92} :catchall_1e1

    goto :goto_97

    :catch_93
    move-exception v0

    move-object v15, v2

    goto/16 :goto_1f7

    .line 185
    :cond_97
    :goto_97
    :try_start_97
    new-instance v1, Lcn/kuaipan/android/kss/upload/e;

    rem-long v21, v4, v16

    const/4 v14, 0x0

    sub-long v23, v18, v4

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v25}, Lcn/kuaipan/android/kss/upload/e;-><init>(JJLjava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a3} :catch_1e5
    .catchall {:try_start_97 .. :try_end_a3} :catchall_1e1

    move-object v14, v1

    move-object/from16 v27, v2

    .line 186
    :goto_a6
    :try_start_a6
    iget-wide v1, v14, Lcn/kuaipan/android/kss/upload/e;->X:J

    cmp-long v1, v1, v18

    if-gez v1, :cond_17f

    iget-wide v1, v14, Lcn/kuaipan/android/kss/upload/e;->Y:J

    const-wide/16 v20, 0x0

    cmp-long v1, v1, v20

    if-lez v1, :cond_17a

    .line 187
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_172

    if-nez v10, :cond_bf

    const/16 v22, 0x0

    goto :goto_ca

    .line 191
    :cond_bf
    iget-wide v1, v14, Lcn/kuaipan/android/kss/upload/e;->X:J

    const/16 v22, 0x0

    add-long/2addr v1, v4

    .line 192
    invoke-virtual {v10, v1, v2}, Lcn/kuaipan/android/kss/FileTranceListener;->a(J)Lcn/kuaipan/android/http/IKscTransferListener;

    move-result-object v1
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_c8} :catch_1dd
    .catchall {:try_start_a6 .. :try_end_c8} :catchall_1d9

    move-object/from16 v22, v1

    :goto_ca
    move-object/from16 v1, p0

    move-object/from16 v23, v27

    move-object/from16 v2, v23

    move-object/from16 v24, v3

    move-wide/from16 v25, v4

    move-object/from16 v4, v22

    move-object/from16 v5, p4

    move-object v10, v6

    move-object/from16 v6, p5

    move-wide/from16 v28, v7

    move/from16 v7, p6

    move-object v8, v14

    .line 194
    :try_start_e0
    invoke-direct/range {v1 .. v8}, Lcn/kuaipan/android/kss/upload/c;->a(Lcn/kuaipan/android/utils/p;Lcn/kuaipan/android/kss/e;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/upload/b;ILcn/kuaipan/android/kss/upload/e;)Lcn/kuaipan/android/kss/upload/e;

    move-result-object v14

    if-eqz v14, :cond_167

    .line 197
    invoke-virtual {v14}, Lcn/kuaipan/android/kss/upload/e;->b()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 198
    new-instance v1, Lcn/kuaipan/android/kss/upload/f;

    invoke-direct {v1}, Lcn/kuaipan/android/kss/upload/f;-><init>()V

    int-to-long v2, v12

    mul-long v2, v2, v16

    .line 199
    iget-wide v4, v14, Lcn/kuaipan/android/kss/upload/e;->X:J

    const/4 v6, 0x0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuaipan/android/kss/upload/f;->a:J

    .line 201
    iget-object v2, v14, Lcn/kuaipan/android/kss/upload/e;->Z:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuaipan/android/kss/upload/f;->b:Ljava/lang/String;

    .line 202
    invoke-direct {v9, v0, v11, v1}, Lcn/kuaipan/android/kss/upload/c;->a(ILcn/kuaipan/android/kss/upload/b;Lcn/kuaipan/android/kss/upload/f;)V

    .line 203
    sget-boolean v1, Lcn/kuaipan/android/kss/upload/c;->W:Z

    if-eqz v1, :cond_113

    const-string v1, "KssUploader"

    const-string v2, "break for UT"

    .line 204
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_113
    move-object v6, v10

    move-object/from16 v27, v23

    move-object/from16 v3, v24

    move-wide/from16 v4, v25

    move-wide/from16 v7, v28

    move-object/from16 v10, p3

    goto :goto_a6

    .line 209
    :cond_11f
    invoke-virtual {v14}, Lcn/kuaipan/android/kss/upload/e;->a()Z

    move-result v1

    if-eqz v1, :cond_149

    .line 210
    new-instance v1, Lcn/kuaipan/android/kss/upload/f;

    invoke-direct {v1}, Lcn/kuaipan/android/kss/upload/f;-><init>()V

    .line 211
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide/from16 v5, v28

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuaipan/android/kss/upload/f;->a:J

    const-string v2, ""

    .line 212
    iput-object v2, v1, Lcn/kuaipan/android/kss/upload/f;->b:Ljava/lang/String;

    .line 213
    invoke-interface {v10, v12}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->a(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    move-result-object v2

    .line 214
    iget-object v3, v14, Lcn/kuaipan/android/kss/upload/e;->aa:Ljava/lang/String;

    iput-object v3, v2, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->a:Ljava/lang/String;

    const/4 v3, 0x1

    .line 215
    iput-boolean v3, v2, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->b:Z

    .line 216
    invoke-direct {v9, v0, v11, v1}, Lcn/kuaipan/android/kss/upload/c;->a(ILcn/kuaipan/android/kss/upload/b;Lcn/kuaipan/android/kss/upload/f;)V

    goto :goto_185

    :cond_149
    move-wide/from16 v5, v28

    .line 219
    invoke-virtual {v14}, Lcn/kuaipan/android/kss/upload/e;->f()Z

    move-result v1

    if-nez v1, :cond_152

    goto :goto_185

    .line 220
    :cond_152
    invoke-virtual/range {p5 .. p5}, Lcn/kuaipan/android/kss/upload/b;->g()V

    .line 221
    invoke-direct/range {p0 .. p1}, Lcn/kuaipan/android/kss/upload/c;->a(I)V

    .line 222
    new-instance v0, Lcn/kuaipan/android/a/l;

    iget-object v1, v14, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/kuaipan/android/a/l;-><init>(Ljava/lang/String;)V

    const-string v1, "KssUploader"

    const-string v2, "Exception in uploadBlock"

    .line 223
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    throw v0

    .line 228
    :cond_167
    new-instance v0, Lcn/kuaipan/android/a/f;

    const v1, 0x7a128

    const-string v2, "Return chunkInfo is null"

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_172
    move-object/from16 v23, v27

    .line 188
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_17a
    move-object v10, v6

    move-wide v5, v7

    move-object/from16 v23, v27

    goto :goto_185

    :cond_17f
    move-object v10, v6

    move-wide v5, v7

    move-object/from16 v23, v27

    const-wide/16 v20, 0x0

    .line 233
    :goto_185
    invoke-virtual {v14}, Lcn/kuaipan/android/kss/upload/e;->a()Z

    move-result v1

    if-eqz v1, :cond_18e

    move-object/from16 v1, v23

    goto :goto_1eb

    .line 237
    :cond_18e
    invoke-virtual {v14}, Lcn/kuaipan/android/kss/upload/e;->e()Z

    move-result v1

    if-eqz v1, :cond_1be

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_1be

    const-string v25, ""

    const-string v1, "KssUploader"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload needBlockRetry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v5

    move-object v6, v10

    move-wide/from16 v4, v20

    move-object/from16 v1, v23

    move-object/from16 v10, p3

    goto/16 :goto_6e

    .line 243
    :cond_1be
    new-instance v1, Lcn/kuaipan/android/a/j;

    const/16 v2, 0xc8

    iget-object v3, v14, Lcn/kuaipan/android/kss/upload/e;->W:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcn/kuaipan/android/a/j;-><init>(ILjava/lang/String;)V

    const-string v2, "KssUploader"

    const-string v3, "Exception in uploadBlock"

    .line 244
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    invoke-virtual/range {p5 .. p5}, Lcn/kuaipan/android/kss/upload/b;->g()V

    .line 247
    invoke-direct/range {p0 .. p1}, Lcn/kuaipan/android/kss/upload/c;->a(I)V

    .line 250
    throw v1
    :try_end_1d5
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_1d5} :catch_1d7
    .catchall {:try_start_e0 .. :try_end_1d5} :catchall_1d5

    :catchall_1d5
    move-exception v0

    goto :goto_208

    :catch_1d7
    move-exception v0

    goto :goto_1e8

    :catchall_1d9
    move-exception v0

    move-object/from16 v23, v27

    goto :goto_208

    :catch_1dd
    move-exception v0

    move-object/from16 v23, v27

    goto :goto_1e8

    :catchall_1e1
    move-exception v0

    move-object/from16 v23, v2

    goto :goto_208

    :catch_1e5
    move-exception v0

    move-object/from16 v23, v2

    :goto_1e8
    move-object/from16 v15, v23

    goto :goto_1f7

    :cond_1eb
    :goto_1eb
    if-eqz v1, :cond_1f0

    .line 257
    :try_start_1ed
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/p;->close()V
    :try_end_1f0
    .catch Ljava/lang/Throwable; {:try_start_1ed .. :try_end_1f0} :catch_1f0

    :catch_1f0
    :cond_1f0
    return-void

    :catchall_1f1
    move-exception v0

    move-object/from16 v23, v1

    goto :goto_208

    :catch_1f5
    move-exception v0

    move-object v15, v1

    :goto_1f7
    const/4 v1, 0x0

    goto :goto_200

    :catchall_1f9
    move-exception v0

    const/16 v23, 0x0

    goto :goto_208

    :catch_1fd
    move-exception v0

    const/4 v1, 0x0

    const/4 v15, 0x0

    .line 253
    :goto_200
    :try_start_200
    invoke-static {v0, v1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object v0

    throw v0
    :try_end_205
    .catchall {:try_start_200 .. :try_end_205} :catchall_205

    :catchall_205
    move-exception v0

    move-object/from16 v23, v15

    :goto_208
    if-eqz v23, :cond_20d

    .line 257
    :try_start_20a
    invoke-virtual/range {v23 .. v23}, Lcn/kuaipan/android/utils/p;->close()V
    :try_end_20d
    .catch Ljava/lang/Throwable; {:try_start_20a .. :try_end_20d} :catch_20d

    .line 261
    :catch_20d
    :cond_20d
    throw v0
.end method

.method private a(ILjava/io/File;Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/upload/b;ZI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p5, :cond_45

    .line 119
    invoke-virtual {p5}, Lcn/kuaipan/android/kss/upload/b;->a()Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object p6

    invoke-static {p2, p6, p7}, Lcn/kuaipan/android/kss/upload/c;->a(Ljava/io/File;Lcn/kuaipan/android/kss/upload/UploadFileInfo;I)V

    .line 121
    invoke-virtual {p5}, Lcn/kuaipan/android/kss/upload/b;->b()Lcn/kuaipan/android/kss/IKssUploadRequestResult;

    move-result-object p6

    .line 122
    invoke-interface {p6, p7}, Lcn/kuaipan/android/kss/IKssUploadRequestResult;->a(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    move-result-object p6

    if-eqz p6, :cond_3a

    .line 126
    invoke-virtual {p6}, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->a()Z

    move-result p6

    if-eqz p6, :cond_2f

    if-eqz p3, :cond_39

    add-int/lit8 p7, p7, 0x1

    int-to-long p4, p7

    const-wide/32 p6, 0x400000

    mul-long p4, p4, p6

    .line 128
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-static {p4, p5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->d(J)V

    goto :goto_39

    :cond_2f
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    .line 131
    invoke-direct/range {v0 .. v6}, Lcn/kuaipan/android/kss/upload/c;->a(ILjava/io/File;Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/upload/b;I)V

    :cond_39
    :goto_39
    return-void

    .line 124
    :cond_3a
    new-instance p1, Lcn/kuaipan/android/a/f;

    const p2, 0x7a128

    const-string p3, "Block should not be null"

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw p1

    .line 116
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The KssUploadInfo can not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcn/kuaipan/android/kss/upload/e;JJJ)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    .line 522
    :cond_3
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/e;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 523
    iput-wide p5, p0, Lcn/kuaipan/android/kss/upload/e;->X:J

    const-wide/16 p1, 0x0

    .line 524
    iput-wide p1, p0, Lcn/kuaipan/android/kss/upload/e;->Y:J

    goto :goto_65

    .line 525
    :cond_10
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/upload/e;->b()Z

    move-result v0

    if-eqz v0, :cond_60

    add-long/2addr p1, p3

    sub-long/2addr p5, p1

    .line 528
    iget-wide p3, p0, Lcn/kuaipan/android/kss/upload/e;->X:J

    cmp-long p3, p3, p1

    if-nez p3, :cond_24

    iget-wide p3, p0, Lcn/kuaipan/android/kss/upload/e;->Y:J

    cmp-long p3, p3, p5

    if-eqz p3, :cond_65

    :cond_24
    const-string p3, "KssUploader"

    .line 529
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Chunk pos is ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/e;->X:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/e;->Y:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "), but in process is ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iput-wide p1, p0, Lcn/kuaipan/android/kss/upload/e;->X:J

    .line 532
    iput-wide p5, p0, Lcn/kuaipan/android/kss/upload/e;->Y:J

    goto :goto_65

    .line 535
    :cond_60
    iput-wide p1, p0, Lcn/kuaipan/android/kss/upload/e;->X:J

    sub-long/2addr p5, p1

    .line 536
    iput-wide p5, p0, Lcn/kuaipan/android/kss/upload/e;->Y:J

    :cond_65
    :goto_65
    return-void
.end method

.method private static a(Ljava/io/File;Lcn/kuaipan/android/kss/upload/UploadFileInfo;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 488
    invoke-virtual {p1, p2}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a(I)Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;

    move-result-object p1

    .line 489
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/32 v4, 0x400000

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    .line 490
    iget v0, p1, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->c:I

    const v1, 0x6263a

    if-ne p2, v0, :cond_5a

    const/4 v0, 0x0

    .line 497
    :try_start_1c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_4e
    .catchall {:try_start_1c .. :try_end_21} :catchall_4b

    .line 498
    :try_start_21
    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long p0, v5, v2

    if-nez p0, :cond_41

    .line 503
    invoke-static {v4, p2}, Lcn/kuaipan/android/utils/b;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p0

    .line 504
    iget-object p1, p1, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_33} :catch_49
    .catchall {:try_start_21 .. :try_end_33} :catchall_55

    if-eqz p0, :cond_39

    .line 511
    :try_start_35
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_38

    :catch_38
    return-void

    .line 505
    :cond_39
    :try_start_39
    new-instance p0, Lcn/kuaipan/android/a/e;

    const-string p1, "Block has changed."

    invoke-direct {p0, v1, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p0

    .line 500
    :cond_41
    new-instance p0, Lcn/kuaipan/android/a/e;

    const-string p1, "File size has changed."

    invoke-direct {p0, v1, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_49} :catch_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_55

    :catch_49
    move-exception p0

    goto :goto_50

    :catchall_4b
    move-exception p0

    move-object v4, v0

    goto :goto_56

    :catch_4e
    move-exception p0

    move-object v4, v0

    .line 508
    :goto_50
    :try_start_50
    invoke-static {p0, v0}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    .line 511
    :goto_56
    :try_start_56
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_59

    .line 514
    :catch_59
    throw p0

    .line 491
    :cond_5a
    new-instance p0, Lcn/kuaipan/android/a/e;

    const-string p1, "Block size has changed."

    invoke-direct {p0, v1, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private b(I)Lcn/kuaipan/android/kss/upload/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->ab:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 483
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/c;->ab:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->c(I)Lcn/kuaipan/android/kss/upload/f;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;ILcn/kuaipan/android/kss/upload/b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/android/kss/upload/c;->a(Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;ILcn/kuaipan/android/kss/upload/b;)V

    return-void
.end method

.method public a(Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;ILcn/kuaipan/android/kss/upload/b;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_10

    .line 86
    new-instance v0, Lcn/kuaipan/android/kss/FileTranceListener;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcn/kuaipan/android/kss/FileTranceListener;-><init>(Lcn/kuaipan/android/http/IKscTransferListener;Z)V

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lcn/kuaipan/android/http/IKscTransferListener;->a(J)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 p2, 0x0

    .line 92
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "KssUploader"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload blockIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    move-object v6, p5

    move v8, p2

    .line 98
    invoke-direct/range {v1 .. v8}, Lcn/kuaipan/android/kss/upload/c;->a(ILjava/io/File;Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/http/KssTransferStopper;Lcn/kuaipan/android/kss/upload/b;ZI)V

    add-int/lit8 p2, p2, 0x1

    .line 100
    invoke-virtual {p5}, Lcn/kuaipan/android/kss/upload/b;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 93
    :cond_42
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method
