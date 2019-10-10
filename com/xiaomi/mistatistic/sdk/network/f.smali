.class final Lcom/xiaomi/mistatistic/sdk/network/f;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Lcom/xiaomi/mistatistic/sdk/network/c;

.field private c:Lcom/xiaomi/mistatistic/sdk/network/d;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/OutputStream;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    .line 14
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    .line 15
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/OutputStream;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    .line 19
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    .line 20
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    if-eqz v0, :cond_9

    .line 78
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 80
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    if-eqz v0, :cond_12

    .line 81
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 29
    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 38
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 39
    throw v0
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iget p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 72
    throw p1
.end method

.method public write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 47
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 50
    throw p1
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    iget p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 61
    throw p1
.end method
