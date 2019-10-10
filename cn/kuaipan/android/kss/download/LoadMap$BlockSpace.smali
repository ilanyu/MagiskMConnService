.class Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/download/LoadMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockSpace"
.end annotation


# instance fields
.field final synthetic a:Lcn/kuaipan/android/kss/download/LoadMap;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/kuaipan/android/kss/download/LoadMap$Space;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

.field private g:I


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;J)V
    .registers 5

    .line 422
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iget-object p1, p2, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->a:Ljava/lang/String;

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b:Ljava/lang/String;

    .line 424
    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c:J

    .line 425
    iget-wide p1, p2, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->c:J

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d:J

    .line 426
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 427
    iput p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->g:I

    .line 428
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b()V

    return-void
.end method

.method static synthetic a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .registers 2

    .line 413
    invoke-direct {p0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;Lcn/kuaipan/android/kss/download/b;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/b;Z)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .registers 6

    monitor-enter p0

    .line 455
    :try_start_1
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_13

    .line 456
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_32

    .line 457
    monitor-exit p0

    return v1

    .line 460
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    if-eq v2, p1, :cond_19

    .line 461
    invoke-static {v2, p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->a(Lcn/kuaipan/android/kss/download/LoadMap$Space;Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result v2
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    if-eqz v2, :cond_19

    .line 462
    monitor-exit p0

    return v1

    :cond_2f
    const/4 p1, 0x0

    .line 466
    monitor-exit p0

    return p1

    :catchall_32
    move-exception p1

    .line 454
    monitor-exit p0

    throw p1
.end method

.method private a(Lcn/kuaipan/android/kss/download/b;)Z
    .registers 10

    .line 515
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/b;->a()V

    const/4 v0, 0x0

    .line 517
    :try_start_4
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c:J

    iget-wide v3, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d:J

    iget-wide v5, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c:J

    const/4 v7, 0x0

    sub-long/2addr v3, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcn/kuaipan/android/kss/download/b;->a(JJ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_25

    .line 518
    :cond_13
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1d
    .catchall {:try_start_4 .. :try_end_19} :catchall_1b

    move v0, v1

    goto :goto_25

    :catchall_1b
    move-exception v0

    goto :goto_29

    :catch_1d
    move-exception v1

    :try_start_1e
    const-string v2, "LoadMap"

    const-string v3, "Meet exception when verify sha1."

    .line 520
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 522
    :goto_25
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/b;->b()V

    return v0

    :goto_29
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/b;->b()V

    throw v0
.end method

.method private declared-synchronized a(Lcn/kuaipan/android/kss/download/b;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 483
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    sget-object v1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->a:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_55

    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_55

    iget v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->g:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_18

    goto :goto_55

    .line 490
    :cond_18
    sget-object v0, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->b:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_57

    const/4 v0, 0x0

    .line 493
    :try_start_1d
    invoke-direct {p0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/b;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_47

    if-nez p1, :cond_3a

    if-eqz p2, :cond_2d

    .line 496
    :try_start_25
    iget p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->g:I

    add-int/2addr p2, v2

    iput p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->g:I

    goto :goto_2d

    :catchall_2b
    move-exception p2

    goto :goto_49

    .line 499
    :cond_2d
    :goto_2d
    iget p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->g:I

    if-ge p2, v1, :cond_32

    goto :goto_3a

    .line 500
    :cond_32
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Sha1 verify failed more than MAX_VERIFY_COUNT"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_2b

    :cond_3a
    :goto_3a
    if-eqz p1, :cond_41

    .line 506
    :try_start_3c
    sget-object p2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->c:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    goto :goto_45

    .line 508
    :cond_41
    sget-object p2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->a:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_57

    :goto_45
    monitor-exit p0

    return p1

    :catchall_47
    move-exception p2

    const/4 p1, 0x0

    :goto_49
    if-eqz p1, :cond_50

    .line 506
    :try_start_4b
    sget-object p1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->c:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    goto :goto_54

    .line 508
    :cond_50
    sget-object p1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->a:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    :goto_54
    throw p2
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_57

    .line 487
    :cond_55
    :goto_55
    monitor-exit p0

    return v2

    :catchall_57
    move-exception p1

    .line 482
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .registers 1

    .line 413
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c()[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J
    .registers 3

    .line 413
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c:J

    return-wide v0
.end method

.method private declared-synchronized b()V
    .registers 10

    monitor-enter p0

    .line 449
    :try_start_1
    sget-object v0, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->a:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 450
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    new-instance v8, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c:J

    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d:J

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/download/LoadMap$Space;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 452
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    .line 448
    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J
    .registers 3

    .line 413
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d:J

    return-wide v0
.end method

.method private declared-synchronized c()[Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .registers 3

    monitor-enter p0

    .line 470
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()J
    .registers 7

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 475
    :try_start_3
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 476
    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b()J

    move-result-wide v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    const/4 v5, 0x0

    add-long/2addr v0, v3

    goto :goto_9

    .line 478
    :cond_1c
    monitor-exit p0

    return-wide v0

    :catchall_1e
    move-exception v0

    .line 473
    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)V
    .registers 1

    .line 413
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->b()V

    return-void
.end method

.method static synthetic e(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J
    .registers 3

    .line 413
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)Ljava/util/ArrayList;
    .registers 1

    .line 413
    iget-object p0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a([J)V
    .registers 13

    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 437
    sget-object v0, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->a:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    if-eqz p1, :cond_11

    .line 438
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_23

    .line 439
    :cond_11
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    new-instance v8, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c:J

    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d:J

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/download/LoadMap$Space;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_23
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_42

    .line 444
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    new-instance v10, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    mul-int/lit8 v3, v1, 0x2

    aget-wide v6, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v8, p1, v3

    move-object v3, v10

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcn/kuaipan/android/kss/download/LoadMap$Space;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_44

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 446
    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    .line 435
    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .registers 3

    .line 432
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    sget-object v1, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->c:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Block("

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "):"

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 538
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 540
    :cond_2c
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
