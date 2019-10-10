.class public final Lcom/google/protobuf/micro/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:I = 0x40

.field private static final m:I = 0x4000000

.field private static final n:I = 0x1000


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/InputStream;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 452
    iput v0, p0, Lcom/google/protobuf/micro/b;->h:I

    const/16 v0, 0x40

    .line 456
    iput v0, p0, Lcom/google/protobuf/micro/b;->j:I

    const/high16 v0, 0x4000000

    .line 459
    iput v0, p0, Lcom/google/protobuf/micro/b;->k:I

    const/16 v0, 0x1000

    .line 473
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/micro/b;->a:[B

    const/4 v0, 0x0

    .line 474
    iput v0, p0, Lcom/google/protobuf/micro/b;->b:I

    .line 475
    iput v0, p0, Lcom/google/protobuf/micro/b;->d:I

    .line 476
    iput-object p1, p0, Lcom/google/protobuf/micro/b;->e:Ljava/io/InputStream;

    return-void
.end method

.method private constructor <init>([BII)V
    .registers 5

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 452
    iput v0, p0, Lcom/google/protobuf/micro/b;->h:I

    const/16 v0, 0x40

    .line 456
    iput v0, p0, Lcom/google/protobuf/micro/b;->j:I

    const/high16 v0, 0x4000000

    .line 459
    iput v0, p0, Lcom/google/protobuf/micro/b;->k:I

    .line 466
    iput-object p1, p0, Lcom/google/protobuf/micro/b;->a:[B

    add-int/2addr p3, p2

    .line 467
    iput p3, p0, Lcom/google/protobuf/micro/b;->b:I

    .line 468
    iput p2, p0, Lcom/google/protobuf/micro/b;->d:I

    const/4 p1, 0x0

    .line 469
    iput-object p1, p0, Lcom/google/protobuf/micro/b;->e:Ljava/io/InputStream;

    return-void
.end method

.method private A()V
    .registers 3

    .line 552
    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/b;->b:I

    .line 553
    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    add-int/2addr v0, v1

    .line 554
    iget v1, p0, Lcom/google/protobuf/micro/b;->h:I

    if-le v0, v1, :cond_1d

    .line 556
    iget v1, p0, Lcom/google/protobuf/micro/b;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/b;->c:I

    .line 557
    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/b;->b:I

    goto :goto_20

    :cond_1d
    const/4 v0, 0x0

    .line 559
    iput v0, p0, Lcom/google/protobuf/micro/b;->c:I

    :goto_20
    return-void
.end method

.method public static a(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/protobuf/micro/b;
    .registers 2

    .line 53
    new-instance v0, Lcom/google/protobuf/micro/b;

    invoke-direct {v0, p0}, Lcom/google/protobuf/micro/b;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/protobuf/micro/b;
    .registers 3

    .line 60
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/micro/b;->a([BII)Lcom/google/protobuf/micro/b;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/google/protobuf/micro/b;
    .registers 4

    .line 68
    new-instance v0, Lcom/google/protobuf/micro/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/micro/b;-><init>([BII)V

    return-object v0
.end method

.method private a(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    iget v0, p0, Lcom/google/protobuf/micro/b;->d:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    if-lt v0, v1, :cond_7e

    .line 608
    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/micro/b;->h:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    if-nez p1, :cond_13

    return v2

    .line 611
    :cond_13
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    .line 617
    :cond_18
    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/b;->g:I

    .line 619
    iput v2, p0, Lcom/google/protobuf/micro/b;->d:I

    .line 620
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->e:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_28

    const/4 v0, -0x1

    goto :goto_30

    :cond_28
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->e:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/protobuf/micro/b;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_30
    iput v0, p0, Lcom/google/protobuf/micro/b;->b:I

    .line 621
    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    if-lt v0, v1, :cond_60

    .line 626
    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    if-ne v0, v1, :cond_48

    .line 627
    iput v2, p0, Lcom/google/protobuf/micro/b;->b:I

    if-nez p1, :cond_43

    return v2

    .line 629
    :cond_43
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    .line 634
    :cond_48
    invoke-direct {p0}, Lcom/google/protobuf/micro/b;->A()V

    .line 635
    iget p1, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/micro/b;->c:I

    add-int/2addr p1, v0

    .line 637
    iget v0, p0, Lcom/google/protobuf/micro/b;->k:I

    if-gt p1, v0, :cond_5b

    if-ltz p1, :cond_5b

    const/4 p1, 0x1

    return p1

    .line 638
    :cond_5b
    invoke-static {}, Lcom/google/protobuf/micro/c;->h()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    .line 622
    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 604
    :cond_7e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static b(Ljava/io/InputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x20

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1e

    .line 338
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v3, :cond_19

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v0, v0, 0x7

    goto :goto_2

    .line 340
    :cond_19
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p0

    throw p0

    :cond_1e
    :goto_1e
    const/16 v2, 0x40

    if-ge v0, v2, :cond_35

    .line 349
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v3, :cond_30

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v0, v0, 0x7

    goto :goto_1e

    .line 351
    :cond_30
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p0

    throw p0

    .line 357
    :cond_35
    invoke-static {}, Lcom/google/protobuf/micro/c;->c()Lcom/google/protobuf/micro/c;

    move-result-object p0

    throw p0
.end method

.method public static c(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/google/protobuf/micro/b;->f:I

    return v0

    .line 84
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/micro/b;->f:I

    .line 85
    iget v0, p0, Lcom/google/protobuf/micro/b;->f:I

    if-eqz v0, :cond_17

    .line 89
    iget v0, p0, Lcom/google/protobuf/micro/b;->f:I

    return v0

    .line 87
    :cond_17
    invoke-static {}, Lcom/google/protobuf/micro/c;->d()Lcom/google/protobuf/micro/c;

    move-result-object v0

    throw v0
.end method

.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/google/protobuf/micro/b;->f:I

    if-ne v0, p1, :cond_5

    return-void

    .line 103
    :cond_5
    invoke-static {}, Lcom/google/protobuf/micro/c;->e()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/google/protobuf/micro/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    .line 226
    iget v1, p0, Lcom/google/protobuf/micro/b;->i:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->j:I

    if-ge v1, v2, :cond_25

    .line 229
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->f(I)I

    move-result v0

    .line 230
    iget v1, p0, Lcom/google/protobuf/micro/b;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/micro/b;->i:I

    .line 231
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/d;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/d;

    const/4 p1, 0x0

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/b;->a(I)V

    .line 233
    iget p1, p0, Lcom/google/protobuf/micro/b;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/micro/b;->i:I

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->g(I)V

    return-void

    .line 227
    :cond_25
    invoke-static {}, Lcom/google/protobuf/micro/c;->g()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/google/protobuf/micro/d;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget v0, p0, Lcom/google/protobuf/micro/b;->i:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->j:I

    if-ge v0, v1, :cond_1e

    .line 216
    iget v0, p0, Lcom/google/protobuf/micro/b;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/micro/b;->i:I

    .line 217
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/d;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/d;

    const/4 p1, 0x4

    .line 219
    invoke-static {p2, p1}, Lcom/google/protobuf/micro/e;->a(II)I

    move-result p1

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/b;->a(I)V

    .line 220
    iget p1, p0, Lcom/google/protobuf/micro/b;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/micro/b;->i:I

    return-void

    .line 214
    :cond_1e
    invoke-static {}, Lcom/google/protobuf/micro/c;->g()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_c

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public b(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lcom/google/protobuf/micro/e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_34

    .line 136
    invoke-static {}, Lcom/google/protobuf/micro/c;->f()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    .line 133
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->u()I

    return v1

    :pswitch_11
    const/4 p1, 0x0

    return p1

    .line 125
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->b()V

    .line 127
    invoke-static {p1}, Lcom/google/protobuf/micro/e;->b(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/micro/e;->a(II)I

    move-result p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/b;->a(I)V

    return v1

    .line 122
    :pswitch_23
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/b;->i(I)V

    return v1

    .line 119
    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->v()J

    return v1

    .line 116
    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->g()I

    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2b
        :pswitch_23
        :pswitch_13
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method public c()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public d()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public d(I)I
    .registers 5

    if-ltz p1, :cond_7

    .line 491
    iget v0, p0, Lcom/google/protobuf/micro/b;->j:I

    .line 492
    iput p1, p0, Lcom/google/protobuf/micro/b;->j:I

    return v0

    .line 488
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(I)I
    .registers 5

    if-ltz p1, :cond_7

    .line 517
    iget v0, p0, Lcom/google/protobuf/micro/b;->k:I

    .line 518
    iput p1, p0, Lcom/google/protobuf/micro/b;->k:I

    return v0

    .line 514
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 539
    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 540
    iget v0, p0, Lcom/google/protobuf/micro/b;->h:I

    if-gt p1, v0, :cond_12

    .line 544
    iput p1, p0, Lcom/google/protobuf/micro/b;->h:I

    .line 546
    invoke-direct {p0}, Lcom/google/protobuf/micro/b;->A()V

    return v0

    .line 542
    :cond_12
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    .line 537
    :cond_17
    invoke-static {}, Lcom/google/protobuf/micro/c;->b()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1
.end method

.method public f()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    return v0
.end method

.method public g(I)V
    .registers 2

    .line 569
    iput p1, p0, Lcom/google/protobuf/micro/b;->h:I

    .line 570
    invoke-direct {p0}, Lcom/google/protobuf/micro/b;->A()V

    return-void
.end method

.method public h()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public h(I)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_d1

    .line 668
    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/micro/b;->h:I

    if-gt v0, v1, :cond_c1

    .line 675
    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gt p1, v0, :cond_23

    .line 677
    new-array v0, p1, [B

    .line 678
    iget-object v2, p0, Lcom/google/protobuf/micro/b;->a:[B

    iget v3, p0, Lcom/google/protobuf/micro/b;->d:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/micro/b;->d:I

    return-object v0

    :cond_23
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_5d

    .line 686
    new-array v0, p1, [B

    .line 687
    iget v2, p0, Lcom/google/protobuf/micro/b;->b:I

    iget v3, p0, Lcom/google/protobuf/micro/b;->d:I

    sub-int/2addr v2, v3

    .line 688
    iget-object v3, p0, Lcom/google/protobuf/micro/b;->a:[B

    iget v4, p0, Lcom/google/protobuf/micro/b;->d:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 689
    iget v3, p0, Lcom/google/protobuf/micro/b;->b:I

    iput v3, p0, Lcom/google/protobuf/micro/b;->d:I

    const/4 v3, 0x1

    .line 694
    invoke-direct {p0, v3}, Lcom/google/protobuf/micro/b;->a(Z)Z

    :goto_3d
    sub-int v4, p1, v2

    .line 696
    iget v5, p0, Lcom/google/protobuf/micro/b;->b:I

    if-le v4, v5, :cond_55

    .line 697
    iget-object v4, p0, Lcom/google/protobuf/micro/b;->a:[B

    iget v5, p0, Lcom/google/protobuf/micro/b;->b:I

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    iget v4, p0, Lcom/google/protobuf/micro/b;->b:I

    add-int/2addr v2, v4

    .line 699
    iget v4, p0, Lcom/google/protobuf/micro/b;->b:I

    iput v4, p0, Lcom/google/protobuf/micro/b;->d:I

    .line 700
    invoke-direct {p0, v3}, Lcom/google/protobuf/micro/b;->a(Z)Z

    goto :goto_3d

    .line 703
    :cond_55
    iget-object p1, p0, Lcom/google/protobuf/micro/b;->a:[B

    invoke-static {p1, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    iput v4, p0, Lcom/google/protobuf/micro/b;->d:I

    return-object v0

    .line 718
    :cond_5d
    iget v2, p0, Lcom/google/protobuf/micro/b;->d:I

    .line 719
    iget v3, p0, Lcom/google/protobuf/micro/b;->b:I

    .line 722
    iget v4, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v5, p0, Lcom/google/protobuf/micro/b;->b:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/micro/b;->g:I

    .line 723
    iput v1, p0, Lcom/google/protobuf/micro/b;->d:I

    .line 724
    iput v1, p0, Lcom/google/protobuf/micro/b;->b:I

    sub-int/2addr v3, v2

    sub-int v4, p1, v3

    .line 730
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    :goto_74
    if-lez v4, :cond_a3

    .line 733
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [B

    const/4 v7, 0x0

    .line 735
    :goto_7d
    array-length v8, v6

    if-ge v7, v8, :cond_9d

    .line 736
    iget-object v8, p0, Lcom/google/protobuf/micro/b;->e:Ljava/io/InputStream;

    const/4 v9, -0x1

    if-nez v8, :cond_87

    const/4 v8, -0x1

    goto :goto_8f

    :cond_87
    iget-object v8, p0, Lcom/google/protobuf/micro/b;->e:Ljava/io/InputStream;

    array-length v10, v6

    sub-int/2addr v10, v7

    .line 737
    invoke-virtual {v8, v6, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    :goto_8f
    if-eq v8, v9, :cond_98

    .line 741
    iget v9, p0, Lcom/google/protobuf/micro/b;->g:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/protobuf/micro/b;->g:I

    add-int/2addr v7, v8

    goto :goto_7d

    .line 739
    :cond_98
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    .line 744
    :cond_9d
    array-length v7, v6

    sub-int/2addr v4, v7

    .line 745
    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_74

    .line 749
    :cond_a3
    new-array p1, p1, [B

    .line 753
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->a:[B

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    .line 756
    :goto_ab
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_c0

    .line 757
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 758
    array-length v4, v2

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    array-length v2, v2

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    :cond_c0
    return-object p1

    .line 670
    :cond_c1
    iget p1, p0, Lcom/google/protobuf/micro/b;->h:I

    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/micro/b;->d:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/b;->i(I)V

    .line 672
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    .line 665
    :cond_d1
    invoke-static {}, Lcom/google/protobuf/micro/c;->b()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1
.end method

.method public i()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->u()I

    move-result v0

    return v0
.end method

.method public i(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_5b

    .line 778
    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/micro/b;->h:I

    if-gt v0, v1, :cond_4b

    .line 785
    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_19

    .line 787
    iget v0, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/micro/b;->d:I

    goto :goto_4a

    .line 790
    :cond_19
    iget v0, p0, Lcom/google/protobuf/micro/b;->b:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    sub-int/2addr v0, v1

    .line 791
    iget v1, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/b;->g:I

    const/4 v1, 0x0

    .line 792
    iput v1, p0, Lcom/google/protobuf/micro/b;->d:I

    .line 793
    iput v1, p0, Lcom/google/protobuf/micro/b;->b:I

    :goto_2a
    if-ge v0, p1, :cond_4a

    .line 797
    iget-object v1, p0, Lcom/google/protobuf/micro/b;->e:Ljava/io/InputStream;

    if-nez v1, :cond_32

    const/4 v1, -0x1

    goto :goto_3c

    :cond_32
    iget-object v1, p0, Lcom/google/protobuf/micro/b;->e:Ljava/io/InputStream;

    sub-int v2, p1, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    long-to-int v1, v1

    :goto_3c
    if-lez v1, :cond_45

    add-int/2addr v0, v1

    .line 802
    iget v2, p0, Lcom/google/protobuf/micro/b;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/micro/b;->g:I

    goto :goto_2a

    .line 799
    :cond_45
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    :cond_4a
    :goto_4a
    return-void

    .line 780
    :cond_4b
    iget p1, p0, Lcom/google/protobuf/micro/b;->h:I

    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/micro/b;->d:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/b;->i(I)V

    .line 782
    invoke-static {}, Lcom/google/protobuf/micro/c;->a()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1

    .line 775
    :cond_5b
    invoke-static {}, Lcom/google/protobuf/micro/c;->b()Lcom/google/protobuf/micro/c;

    move-result-object p1

    throw p1
.end method

.method public j()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    .line 198
    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->d:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    if-lez v0, :cond_1e

    .line 201
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/micro/b;->a:[B

    iget v3, p0, Lcom/google/protobuf/micro/b;->d:I

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 202
    iget v2, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/micro/b;->d:I

    return-object v1

    .line 206
    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->h(I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public l()Lcom/google/protobuf/micro/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    .line 240
    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    iget v2, p0, Lcom/google/protobuf/micro/b;->d:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    if-lez v0, :cond_1b

    .line 243
    iget-object v1, p0, Lcom/google/protobuf/micro/b;->a:[B

    iget v2, p0, Lcom/google/protobuf/micro/b;->d:I

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/micro/a;->a([BII)Lcom/google/protobuf/micro/a;

    move-result-object v1

    .line 244
    iget v2, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/micro/b;->d:I

    return-object v1

    :cond_1b
    if-nez v0, :cond_20

    .line 247
    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    return-object v0

    .line 250
    :cond_20
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/b;->h(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/micro/a;->a([B)Lcom/google/protobuf/micro/a;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    return v0
.end method

.method public n()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    return v0
.end method

.method public o()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->u()I

    move-result v0

    return v0
.end method

.method public p()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/b;->c(I)I

    move-result v0

    return v0
.end method

.method public r()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/micro/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    .line 299
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_52

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 303
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v1

    if-ltz v1, :cond_22

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_52

    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 307
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v1

    if-ltz v1, :cond_31

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_52

    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 311
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_52

    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4d

    .line 315
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v2

    if-ltz v2, :cond_4a

    return v0

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 319
    :cond_4d
    invoke-static {}, Lcom/google/protobuf/micro/c;->c()Lcom/google/protobuf/micro/c;

    move-result-object v0

    throw v0

    :cond_52
    :goto_52
    return v0
.end method

.method public t()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    .line 365
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    .line 372
    :cond_18
    invoke-static {}, Lcom/google/protobuf/micro/c;->c()Lcom/google/protobuf/micro/c;

    move-result-object v0

    throw v0
.end method

.method public u()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v1

    .line 379
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v2

    .line 380
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public v()J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v0

    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v1

    .line 391
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v2

    .line 392
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v3

    .line 393
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v4

    .line 394
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v5

    .line 395
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v6

    .line 396
    invoke-virtual {p0}, Lcom/google/protobuf/micro/b;->z()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public w()V
    .registers 2

    const/4 v0, 0x0

    .line 526
    iput v0, p0, Lcom/google/protobuf/micro/b;->g:I

    return-void
.end method

.method public x()I
    .registers 3

    .line 578
    iget v0, p0, Lcom/google/protobuf/micro/b;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    .line 582
    :cond_9
    iget v0, p0, Lcom/google/protobuf/micro/b;->g:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/2addr v0, v1

    .line 583
    iget v1, p0, Lcom/google/protobuf/micro/b;->h:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public y()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    iget v0, p0, Lcom/google/protobuf/micro/b;->d:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    invoke-direct {p0, v2}, Lcom/google/protobuf/micro/b;->a(Z)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public z()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    iget v0, p0, Lcom/google/protobuf/micro/b;->d:I

    iget v1, p0, Lcom/google/protobuf/micro/b;->b:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    .line 652
    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/b;->a(Z)Z

    .line 654
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/micro/b;->a:[B

    iget v1, p0, Lcom/google/protobuf/micro/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/b;->d:I

    aget-byte v0, v0, v1

    return v0
.end method
