.class public Lcn/kuaipan/android/http/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private b:Lcn/kuaipan/android/http/n;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2000

    .line 8
    new-array v0, v0, [B

    sput-object v0, Lcn/kuaipan/android/http/a;->a:[B

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/n;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcn/kuaipan/android/http/a;->c:I

    .line 40
    iput-object p1, p0, Lcn/kuaipan/android/http/a;->b:Lcn/kuaipan/android/http/n;

    return-void
.end method

.method private a()Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

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

    .line 54
    iget-object v0, p0, Lcn/kuaipan/android/http/a;->b:Lcn/kuaipan/android/http/n;

    if-eqz v0, :cond_d

    .line 58
    iget-object v0, p0, Lcn/kuaipan/android/http/a;->b:Lcn/kuaipan/android/http/n;

    iget v1, p0, Lcn/kuaipan/android/http/a;->d:I

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/http/n;->a(I)I

    move-result v0

    return v0

    .line 56
    :cond_d
    invoke-direct {p0}, Lcn/kuaipan/android/http/a;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcn/kuaipan/android/http/a;->b:Lcn/kuaipan/android/http/n;

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    iget p1, p0, Lcn/kuaipan/android/http/a;->d:I

    iput p1, p0, Lcn/kuaipan/android/http/a;->c:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 91
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    .line 89
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/http/a;->b:Lcn/kuaipan/android/http/n;

    if-eqz v0, :cond_15

    .line 126
    iget v1, p0, Lcn/kuaipan/android/http/a;->d:I

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/http/n;->b(I)I

    move-result v0

    if-ltz v0, :cond_13

    .line 128
    iget v1, p0, Lcn/kuaipan/android/http/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/kuaipan/android/http/a;->d:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    .line 130
    :cond_13
    monitor-exit p0

    return v0

    .line 123
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcn/kuaipan/android/http/a;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    .line 120
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/http/a;->b:Lcn/kuaipan/android/http/n;

    if-eqz v0, :cond_14

    .line 160
    iget v1, p0, Lcn/kuaipan/android/http/a;->d:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/kuaipan/android/http/n;->a(I[BII)I

    move-result p1

    if-lez p1, :cond_12

    .line 162
    iget p2, p0, Lcn/kuaipan/android/http/a;->d:I

    add-int/2addr p2, p1

    iput p2, p0, Lcn/kuaipan/android/http/a;->d:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 164
    :cond_12
    monitor-exit p0

    return p1

    .line 157
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcn/kuaipan/android/http/a;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p1

    .line 154
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/http/a;->b:Lcn/kuaipan/android/http/n;

    if-eqz v0, :cond_18

    const/4 v0, -0x1

    .line 180
    iget v1, p0, Lcn/kuaipan/android/http/a;->c:I

    if-eq v0, v1, :cond_10

    .line 183
    iget v0, p0, Lcn/kuaipan/android/http/a;->c:I

    iput v0, p0, Lcn/kuaipan/android/http/a;->d:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_20

    .line 184
    monitor-exit p0

    return-void

    .line 181
    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    .line 176
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    const-wide/16 p1, 0x0

    .line 200
    monitor-exit p0

    return-wide p1

    .line 202
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcn/kuaipan/android/http/a;->b:Lcn/kuaipan/android/http/n;

    if-eqz v0, :cond_3e

    .line 207
    iget v1, p0, Lcn/kuaipan/android/http/a;->d:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 210
    :goto_15
    iget v3, p0, Lcn/kuaipan/android/http/a;->d:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3b

    iget v3, p0, Lcn/kuaipan/android/http/a;->d:I

    sget-object v4, Lcn/kuaipan/android/http/a;->a:[B

    sget-object v5, Lcn/kuaipan/android/http/a;->a:[B

    array-length v5, v5

    int-to-long v5, v5

    iget v7, p0, Lcn/kuaipan/android/http/a;->d:I

    int-to-long v7, v7

    sub-long v7, v1, v7

    .line 211
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0, v3, v4, p1, v5}, Lcn/kuaipan/android/http/n;->a(I[BII)I

    move-result v3

    if-ltz v3, :cond_3b

    .line 212
    iget v4, p0, Lcn/kuaipan/android/http/a;->d:I

    add-int/2addr v4, v3

    iput v4, p0, Lcn/kuaipan/android/http/a;->d:I
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_43

    add-int/2addr p2, v3

    goto :goto_15

    :cond_3b
    int-to-long p1, p2

    .line 216
    monitor-exit p0

    return-wide p1

    .line 204
    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcn/kuaipan/android/http/a;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    .line 198
    monitor-exit p0

    throw p1
.end method
