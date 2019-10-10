.class public Lcn/kuaipan/android/http/d;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# instance fields
.field private final a:Lcn/kuaipan/android/http/n;

.field private final b:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/j;)V
    .registers 9

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 19
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_15

    goto :goto_18

    .line 28
    :cond_15
    iput-object v1, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    goto :goto_27

    .line 22
    :cond_18
    :goto_18
    :try_start_18
    new-instance v0, Lcn/kuaipan/android/http/n;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcn/kuaipan/android/http/n;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/j;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_25

    :catch_22
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    .line 26
    :goto_25
    iput-object v0, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    .line 30
    :goto_27
    iput-object v1, p0, Lcn/kuaipan/android/http/d;->b:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    invoke-virtual {v0}, Lcn/kuaipan/android/http/n;->a()V

    .line 98
    :cond_9
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    if-eqz v0, :cond_c

    .line 39
    new-instance v0, Lcn/kuaipan/android/http/a;

    iget-object v1, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    invoke-direct {v0, v1}, Lcn/kuaipan/android/http/a;-><init>(Lcn/kuaipan/android/http/n;)V

    return-object v0

    .line 40
    :cond_c
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->b:Ljava/io/IOException;

    if-nez v0, :cond_17

    .line 41
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 43
    :cond_17
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->b:Ljava/io/IOException;

    throw v0
.end method

.method public getContentLength()J
    .registers 3

    .line 34
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChunked()Z
    .registers 2

    .line 53
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcn/kuaipan/android/http/d;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .line 90
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcn/kuaipan/android/http/d;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_31

    .line 69
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->a:Lcn/kuaipan/android/http/n;

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 72
    :try_start_7
    invoke-virtual {p0}, Lcn/kuaipan/android/http/d;->getContent()Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_23

    const/16 v0, 0x1000

    .line 74
    :try_start_d
    new-array v0, v0, [B

    .line 75
    :goto_f
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x0

    .line 76
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_21

    goto :goto_f

    :cond_1b
    if-eqz v1, :cond_30

    .line 80
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_30

    :catchall_21
    move-exception p1

    goto :goto_25

    :catchall_23
    move-exception p1

    move-object v1, v0

    :goto_25
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2a
    throw p1

    .line 84
    :cond_2b
    iget-object v0, p0, Lcn/kuaipan/android/http/d;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    :cond_30
    :goto_30
    return-void

    .line 67
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
