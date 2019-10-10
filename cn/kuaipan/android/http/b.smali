.class public Lcn/kuaipan/android/http/b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final a:I = 0x200


# instance fields
.field private final b:Lcn/kuaipan/android/http/c;

.field private final c:[B

.field private d:Z

.field private e:Z

.field private f:J

.field private final g:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/c;)V
    .registers 4

    const/16 v0, 0x200

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/http/b;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/c;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/c;I)V
    .registers 6

    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lcn/kuaipan/android/http/b;->f:J

    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    if-lez p3, :cond_2c

    .line 65
    invoke-interface {p2}, Lcn/kuaipan/android/http/c;->a()V

    .line 66
    iput-object p2, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    .line 67
    new-array p1, p3, [B

    iput-object p1, p0, Lcn/kuaipan/android/http/b;->c:[B

    .line 68
    iget-object p1, p0, Lcn/kuaipan/android/http/b;->in:Ljava/io/InputStream;

    instance-of p1, p1, Lcn/kuaipan/android/utils/p;

    if-eqz p1, :cond_27

    .line 69
    iget-object p1, p0, Lcn/kuaipan/android/http/b;->in:Ljava/io/InputStream;

    check-cast p1, Lcn/kuaipan/android/utils/p;

    invoke-virtual {p1}, Lcn/kuaipan/android/utils/p;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/kuaipan/android/http/b;->g:J

    goto :goto_2b

    :cond_27
    const-wide/16 p1, 0x0

    .line 71
    iput-wide p1, p0, Lcn/kuaipan/android/http/b;->g:J

    :goto_2b
    return-void

    .line 63
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 60
    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 163
    iget-boolean v0, p0, Lcn/kuaipan/android/http/b;->d:Z

    if-nez v0, :cond_4d

    const v0, 0x7fffffff

    .line 169
    :goto_7
    iget-boolean v1, p0, Lcn/kuaipan/android/http/b;->e:Z

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    invoke-interface {v1}, Lcn/kuaipan/android/http/c;->d()I

    move-result v1

    if-lez v1, :cond_4c

    if-gt v1, v0, :cond_44

    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 178
    iget-object v0, p0, Lcn/kuaipan/android/http/b;->c:[B

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    iget-object v2, p0, Lcn/kuaipan/android/http/b;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcn/kuaipan/android/http/b;->c:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_39

    .line 181
    iget-object v2, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    iget-object v3, p0, Lcn/kuaipan/android/http/b;->c:[B

    invoke-interface {v2, v3, v4, v0}, Lcn/kuaipan/android/http/c;->a([BII)V

    goto :goto_3c

    :cond_39
    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcn/kuaipan/android/http/b;->e:Z

    :goto_3c
    move v0, v1

    goto :goto_7

    .line 175
    :cond_3e
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 171
    :cond_44
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v1, "Needed data is increased"

    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    return-void

    .line 164
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-boolean v0, p0, Lcn/kuaipan/android/http/b;->d:Z

    if-nez v0, :cond_c

    .line 239
    iget-boolean v0, p0, Lcn/kuaipan/android/http/b;->e:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lcn/kuaipan/android/http/b;->d:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 254
    :try_start_5
    iget-object v1, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    invoke-interface {v1}, Lcn/kuaipan/android/http/c;->c()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12

    .line 256
    iput-boolean v0, p0, Lcn/kuaipan/android/http/b;->d:Z

    .line 257
    iput-boolean v0, p0, Lcn/kuaipan/android/http/b;->e:Z

    .line 258
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    goto :goto_1b

    :catchall_12
    move-exception v1

    .line 256
    iput-boolean v0, p0, Lcn/kuaipan/android/http/b;->d:Z

    .line 257
    iput-boolean v0, p0, Lcn/kuaipan/android/http/b;->e:Z

    .line 258
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    throw v1

    :cond_1b
    :goto_1b
    return-void
.end method

.method public mark(I)V
    .registers 4

    .line 271
    iget-object p1, p0, Lcn/kuaipan/android/http/b;->in:Ljava/io/InputStream;

    instance-of p1, p1, Lcn/kuaipan/android/utils/p;

    if-eqz p1, :cond_10

    .line 272
    iget-object p1, p0, Lcn/kuaipan/android/http/b;->in:Ljava/io/InputStream;

    check-cast p1, Lcn/kuaipan/android/utils/p;

    invoke-virtual {p1}, Lcn/kuaipan/android/utils/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/http/b;->f:J

    :cond_10
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 307
    iget-object v0, p0, Lcn/kuaipan/android/http/b;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcn/kuaipan/android/utils/p;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    invoke-interface {v0}, Lcn/kuaipan/android/http/c;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 84
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0, v1, v2, v0}, Lcn/kuaipan/android/http/b;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    return v3

    .line 88
    :cond_c
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcn/kuaipan/android/http/b;->d:Z

    if-nez v0, :cond_7e

    if-eqz p1, :cond_78

    if-ltz p2, :cond_72

    if-ltz p3, :cond_72

    add-int v0, p2, p3

    .line 112
    array-length v1, p1

    if-gt v0, v1, :cond_72

    if-nez p3, :cond_13

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_13
    array-length v0, p1

    if-gt p2, v0, :cond_6c

    if-ltz p3, :cond_6c

    if-ltz p2, :cond_6c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_6c

    .line 130
    :try_start_1e
    invoke-direct {p0}, Lcn/kuaipan/android/http/b;->a()V

    .line 132
    iget-object v0, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    invoke-interface {v0, p1, p2, p3}, Lcn/kuaipan/android/http/c;->b([BII)I

    move-result p1

    if-lez p1, :cond_2a

    return p1

    .line 141
    :cond_2a
    iget-boolean p1, p0, Lcn/kuaipan/android/http/b;->e:Z

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    invoke-interface {p1}, Lcn/kuaipan/android/http/c;->e()Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, -0x1

    return p1

    .line 143
    :cond_38
    iget-boolean p1, p0, Lcn/kuaipan/android/http/b;->e:Z

    if-eqz p1, :cond_42

    .line 144
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 146
    :cond_42
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    new-instance p2, Ljava/util/zip/DataFormatException;

    const-string p3, "Failed read data from decoder."

    invoke-direct {p2, p3}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_55
    .catch Ljava/util/zip/DataFormatException; {:try_start_1e .. :try_end_55} :catch_55

    :catch_55
    move-exception p1

    .line 150
    iget-boolean p2, p0, Lcn/kuaipan/android/http/b;->e:Z

    if-eqz p2, :cond_60

    .line 151
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 153
    :cond_60
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 126
    :cond_6c
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 113
    :cond_72
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 109
    :cond_78
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 105
    :cond_7e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcn/kuaipan/android/http/b;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 288
    iget-wide v0, p0, Lcn/kuaipan/android/http/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_37

    .line 289
    iget-object v0, p0, Lcn/kuaipan/android/http/b;->in:Ljava/io/InputStream;

    check-cast v0, Lcn/kuaipan/android/utils/p;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuaipan/android/http/b;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcn/kuaipan/android/http/b;->e:Z

    .line 293
    :cond_1f
    iget-object v0, p0, Lcn/kuaipan/android/http/b;->in:Ljava/io/InputStream;

    check-cast v0, Lcn/kuaipan/android/utils/p;

    iget-wide v1, p0, Lcn/kuaipan/android/http/b;->f:J

    invoke-virtual {v0, v1, v2}, Lcn/kuaipan/android/utils/p;->a(J)V

    .line 294
    iget-object v0, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    invoke-interface {v0}, Lcn/kuaipan/android/http/c;->a()V

    .line 295
    iget-object v0, p0, Lcn/kuaipan/android/http/b;->b:Lcn/kuaipan/android/http/c;

    iget-wide v1, p0, Lcn/kuaipan/android/http/b;->f:J

    iget-wide v3, p0, Lcn/kuaipan/android/http/b;->g:J

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/http/c;->a(J)V

    :cond_37
    return-void

    .line 286
    :cond_38
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_38

    :goto_6
    cmp-long v2, v0, p1

    if-gez v2, :cond_37

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_31

    .line 204
    iget-object v2, p0, Lcn/kuaipan/android/http/b;->c:[B

    const/4 v3, 0x0

    sub-long v4, p1, v0

    iget-object v6, p0, Lcn/kuaipan/android/http/b;->c:[B

    array-length v6, v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_25

    iget-object v4, p0, Lcn/kuaipan/android/http/b;->c:[B

    array-length v4, v4

    goto :goto_26

    :cond_25
    long-to-int v4, v4

    :goto_26
    invoke-virtual {p0, v2, v3, v4}, Lcn/kuaipan/android/http/b;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2e

    return-wide v0

    :cond_2e
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_6

    .line 201
    :cond_31
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_37
    return-wide v0

    .line 215
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
