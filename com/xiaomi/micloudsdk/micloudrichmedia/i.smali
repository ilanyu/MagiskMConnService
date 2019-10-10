.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/i;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/j;
.source "SourceFile"


# instance fields
.field private g:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    .line 16
    array-length p2, p1

    if-eqz p2, :cond_1f

    .line 19
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->g:[B

    .line 20
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->g:[B

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->c([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->c:Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->c:Ljava/lang/String;

    if-eqz p1, :cond_17

    return-void

    .line 22
    :cond_17
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Calculate file sha-1 digest error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The data to be uploaded should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->g:[B

    array-length v0, v0

    return v0
.end method

.method a(I)[B
    .registers 6

    .line 28
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->f:I

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->a()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 30
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->a()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->f:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_14

    .line 31
    new-array p1, p1, [B

    goto :goto_1d

    .line 33
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->a()I

    move-result p1

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->f:I

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 35
    :goto_1d
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->g:[B

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->f:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->f:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/i;->f:I

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method
