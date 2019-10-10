.class final Lcom/xiaomi/mistatistic/sdk/network/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Lcom/xiaomi/mistatistic/sdk/network/c;

.field private c:Lcom/xiaomi/mistatistic/sdk/network/d;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/InputStream;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    .line 14
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    .line 15
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/InputStream;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    .line 19
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 125
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    if-eqz v0, :cond_12

    .line 126
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    return v0
.end method

.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 29
    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a()V

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    if-eqz v0, :cond_12

    .line 39
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a()V

    .line 42
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    .line 44
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 45
    throw v0
.end method

.method public mark(I)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 64
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    return v0

    :catch_10
    move-exception v0

    .line 68
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 69
    throw v0
.end method

.method public read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    .line 78
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    return p1

    :catch_f
    move-exception p1

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 83
    throw p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_e

    .line 92
    iget p2, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    return p1

    :catch_f
    move-exception p1

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 97
    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_a
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 109
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    goto :goto_f

    :catch_a
    move-exception v0

    .line 106
    :try_start_b
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 107
    throw v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_8

    .line 103
    :goto_f
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p1

    :catch_7
    move-exception p1

    .line 116
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 117
    throw p1
.end method
