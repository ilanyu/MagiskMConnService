.class Lcn/kuaipan/android/kss/download/LoadMap$Space;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/download/LoadMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Space"
.end annotation


# instance fields
.field final synthetic a:Lcn/kuaipan/android/kss/download/LoadMap;

.field private final b:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V
    .registers 7

    .line 353
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long p1, p5, p3

    if-ltz p1, :cond_10

    .line 357
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .line 358
    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    .line 359
    iput-wide p5, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    return-void

    .line 355
    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .registers 1

    .line 348
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/kuaipan/android/kss/download/LoadMap$Space;Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .registers 2

    .line 348
    invoke-direct {p0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->e(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .registers 1

    .line 348
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/kuaipan/android/kss/download/LoadMap$Space;)J
    .registers 3

    .line 348
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    return-wide v0
.end method

.method private c()Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .registers 11

    .line 376
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x400

    .line 377
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1b

    .line 378
    div-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    .line 381
    :cond_1b
    new-instance v9, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    iget-wide v7, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    move-object v2, v9

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lcn/kuaipan/android/kss/download/LoadMap$Space;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V

    .line 382
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->f(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iput-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    return-object v9
.end method

.method static synthetic d(Lcn/kuaipan/android/kss/download/LoadMap$Space;)J
    .registers 3

    .line 348
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    return-wide v0
.end method

.method private d()Z
    .registers 2

    .line 395
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    invoke-static {v0, p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->a(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result v0

    return v0
.end method

.method private e(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .registers 6

    .line 399
    iget-wide v0, p1, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 403
    :cond_a
    iget-wide v0, p1, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    iput-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method a()J
    .registers 3

    .line 363
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    return-wide v0
.end method

.method a(I)V
    .registers 7

    .line 370
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    .line 372
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method b()J
    .registers 7

    .line 389
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    monitor-enter v0

    .line 390
    :try_start_3
    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    iget-wide v3, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_b
    move-exception v1

    .line 391
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
