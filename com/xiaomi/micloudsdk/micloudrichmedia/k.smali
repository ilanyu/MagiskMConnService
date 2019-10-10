.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/k;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/j;
.source "SourceFile"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_20

    .line 25
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->g:Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->c:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->c:Ljava/lang/String;

    if-eqz p1, :cond_18

    return-void

    .line 28
    :cond_18
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Calculate file sha-1 digest error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The upload file parameters should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_d
    return v0
.end method

.method a(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->f:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3a

    .line 36
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->a()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->f:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1d

    .line 37
    new-array p1, p1, [B

    goto :goto_26

    .line 39
    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->a()I

    move-result p1

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->f:I

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 41
    :goto_26
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 43
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->f:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->f:I

    return-object p1

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method j()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->g:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    return-void
.end method

.method k()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_9

    .line 57
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_9
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/k;->h:Ljava/io/RandomAccessFile;

    return-void
.end method
