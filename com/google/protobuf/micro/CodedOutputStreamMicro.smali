.class public final Lcom/google/protobuf/micro/CodedOutputStreamMicro;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/micro/CodedOutputStreamMicro$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final a:I = 0x1000

.field public static final b:I = 0x4

.field public static final c:I = 0x8


# instance fields
.field private final d:[B

.field private final e:I

.field private f:I

.field private final g:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g:Ljava/io/OutputStream;

    .line 73
    iput-object p2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:[B

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    .line 75
    array-length p1, p2

    iput p1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e:I

    return-void
.end method

.method private constructor <init>([BII)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g:Ljava/io/OutputStream;

    .line 66
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:[B

    .line 67
    iput p2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    add-int/2addr p2, p3

    .line 68
    iput p2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e:I

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .registers 2

    const/16 v0, 0x1000

    .line 83
    invoke-static {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Ljava/io/OutputStream;I)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .registers 3

    .line 92
    new-instance v0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static a([B)Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .registers 3

    .line 102
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a([BII)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .registers 4

    .line 114
    new-instance v0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;-><init>([BII)V

    return-object v0
.end method

.method public static b(D)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static b(F)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static b(ID)I
    .registers 3

    .line 405
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IF)I
    .registers 2

    .line 413
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILcom/google/protobuf/micro/a;)I
    .registers 2

    .line 500
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Lcom/google/protobuf/micro/a;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .registers 2

    .line 473
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .registers 2

    .line 464
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(I[B)I
    .registers 2

    .line 509
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c([B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Lcom/google/protobuf/micro/a;)I
    .registers 2

    .line 694
    invoke-virtual {p0}, Lcom/google/protobuf/micro/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/micro/a;->a()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 664
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 665
    array-length v0, p0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result v0

    array-length p0, p0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    add-int/2addr v0, p0

    return v0

    .line 668
    :catch_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static c(ILcom/google/protobuf/micro/d;)I
    .registers 2

    .line 482
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(Lcom/google/protobuf/micro/d;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(Lcom/google/protobuf/micro/d;)I
    .registers 1

    .line 677
    invoke-virtual {p0}, Lcom/google/protobuf/micro/d;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static c([B)I
    .registers 2

    .line 702
    array-length v0, p0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result v0

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(ILcom/google/protobuf/micro/d;)I
    .registers 2

    .line 491
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(Lcom/google/protobuf/micro/d;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(Lcom/google/protobuf/micro/d;)I
    .registers 2

    .line 685
    invoke-virtual {p0}, Lcom/google/protobuf/micro/d;->getSerializedSize()I

    move-result p0

    .line 686
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method private d()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    .line 767
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:[B

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 768
    iput v3, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    return-void

    .line 762
    :cond_11
    new-instance v0, Lcom/google/protobuf/micro/CodedOutputStreamMicro$OutOfSpaceException;

    invoke-direct {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro$OutOfSpaceException;-><init>()V

    throw v0
.end method

.method public static f(IJ)I
    .registers 3

    .line 421
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(J)I
    .registers 2

    .line 610
    invoke-static {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->l(J)I

    move-result p0

    return p0
.end method

.method public static g(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 627
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static g(II)I
    .registers 2

    .line 437
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(IJ)I
    .registers 3

    .line 429
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(J)I
    .registers 2

    .line 618
    invoke-static {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->l(J)I

    move-result p0

    return p0
.end method

.method public static h(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static h(II)I
    .registers 2

    .line 455
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(IJ)I
    .registers 3

    .line 446
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static i(I)I
    .registers 1

    .line 710
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result p0

    return p0
.end method

.method public static i(II)I
    .registers 2

    .line 517
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->i(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static i(IJ)I
    .registers 3

    .line 544
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->i(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static i(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static j(I)I
    .registers 1

    .line 718
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result p0

    return p0
.end method

.method public static j(II)I
    .registers 2

    .line 526
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->j(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(IJ)I
    .registers 3

    .line 560
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->j(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(J)I
    .registers 2

    .line 750
    invoke-static {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->l(J)I

    move-result p0

    return p0
.end method

.method public static k(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static k(II)I
    .registers 2

    .line 535
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->k(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static l(I)I
    .registers 1

    .line 742
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->r(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result p0

    return p0
.end method

.method public static l(II)I
    .registers 2

    .line 552
    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->l(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static l(J)I
    .registers 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 p0, 0x5

    return p0

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 p0, 0x6

    return p0

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 p0, 0x7

    return p0

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 p0, 0x8

    return p0

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_5d

    const/16 p0, 0x9

    return p0

    :cond_5d
    const/16 p0, 0xa

    return p0
.end method

.method public static n(I)I
    .registers 2

    const/4 v0, 0x0

    .line 881
    invoke-static {p0, v0}, Lcom/google/protobuf/micro/e;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->p(I)I

    move-result p0

    return p0
.end method

.method public static n(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static p(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static r(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 777
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d()V

    :cond_7
    return-void
.end method

.method public a(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e:I

    if-ne v0, v1, :cond_9

    .line 826
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d()V

    .line 829
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:[B

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(J)V

    return-void
.end method

.method public a(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->q(I)V

    return-void
.end method

.method public a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    .line 311
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->k(J)V

    :goto_a
    return-void
.end method

.method public a(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 123
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(D)V

    return-void
.end method

.method public a(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(F)V

    return-void
.end method

.method public a(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 151
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(I)V

    return-void
.end method

.method public a(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 137
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(J)V

    return-void
.end method

.method public a(ILcom/google/protobuf/micro/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 201
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Lcom/google/protobuf/micro/a;)V

    return-void
.end method

.method public a(ILcom/google/protobuf/micro/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Lcom/google/protobuf/micro/d;)V

    const/4 p2, 0x4

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 172
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Z)V

    return-void
.end method

.method public a(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 207
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 208
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b([B)V

    return-void
.end method

.method public a(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->k(J)V

    return-void
.end method

.method public a(Lcom/google/protobuf/micro/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Lcom/google/protobuf/micro/a;->c()[B

    move-result-object p1

    .line 354
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d([B)V

    return-void
.end method

.method public a(Lcom/google/protobuf/micro/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/d;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 336
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d([B)V

    return-void
.end method

.method public a(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    return-void
.end method

.method public b()I
    .registers 3

    .line 786
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_a

    .line 787
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    sub-int/2addr v0, v1

    return v0

    .line 789
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->q(I)V

    return-void
.end method

.method public b(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(I)V

    return-void
.end method

.method public b(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 144
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(J)V

    return-void
.end method

.method public b(ILcom/google/protobuf/micro/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 194
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Lcom/google/protobuf/micro/d;)V

    return-void
.end method

.method public b(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->k(J)V

    return-void
.end method

.method public b(Lcom/google/protobuf/micro/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Lcom/google/protobuf/micro/d;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    .line 348
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/d;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    return-void
.end method

.method public b([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    .line 361
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d([B)V

    return-void
.end method

.method public b([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_14

    .line 847
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:[B

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    iget p1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    goto :goto_3b

    .line 852
    :cond_14
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    sub-int/2addr v0, v1

    .line 853
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:[B

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 856
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e:I

    iput v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    .line 857
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d()V

    .line 862
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e:I

    if-gt p3, v0, :cond_36

    .line 864
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    iput p3, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f:I

    goto :goto_3b

    .line 868
    :cond_36
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_3b
    return-void
.end method

.method public c()V
    .registers 3

    .line 803
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 804
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    return-void
.end method

.method public c(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 216
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(I)V

    return-void
.end method

.method public c(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 158
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(J)V

    return-void
.end method

.method public c(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(J)V

    return-void
.end method

.method public d(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    return-void
.end method

.method public d(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 226
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(I)V

    return-void
.end method

.method public d(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 240
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(J)V

    return-void
.end method

.method public d(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(J)V

    return-void
.end method

.method public d([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b([BII)V

    return-void
.end method

.method public e(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->q(I)V

    return-void
.end method

.method public e(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 233
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    return-void
.end method

.method public e(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 254
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(J)V

    return-void
.end method

.method public e(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->n(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->k(J)V

    return-void
.end method

.method public f(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    return-void
.end method

.method public f(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(II)V

    .line 247
    invoke-virtual {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)V

    return-void
.end method

.method public k(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int p1, p1

    .line 917
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 920
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public m(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 834
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(B)V

    return-void
.end method

.method public m(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    invoke-static {p1, p2}, Lcom/google/protobuf/micro/e;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->o(I)V

    return-void
.end method

.method public m(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 952
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 953
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 954
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 955
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 956
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 957
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 958
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    .line 959
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    return-void
.end method

.method public o(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 891
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 894
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public q(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    .line 942
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 943
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 944
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 945
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->m(I)V

    return-void
.end method
