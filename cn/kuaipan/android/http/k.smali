.class public Lcn/kuaipan/android/http/k;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# instance fields
.field private final a:Lcn/kuaipan/android/http/i;

.field private final b:Lcn/kuaipan/android/http/IKscTransferListener;

.field private final c:Lcn/kuaipan/android/http/KssTransferStopper;

.field private final d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V
    .registers 6

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 33
    iput-object p2, p0, Lcn/kuaipan/android/http/k;->a:Lcn/kuaipan/android/http/i;

    .line 34
    iput-object p3, p0, Lcn/kuaipan/android/http/k;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 35
    iput-object p4, p0, Lcn/kuaipan/android/http/k;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    .line 36
    iput-boolean p5, p0, Lcn/kuaipan/android/http/k;->d:Z

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcn/kuaipan/android/http/k;->e:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 24
    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/k;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcn/kuaipan/android/http/k;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/kuaipan/android/http/k;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    invoke-interface {v0}, Lcn/kuaipan/android/http/KssTransferStopper;->a()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1a

    .line 44
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Lcn/kuaipan/android/a/g;

    invoke-direct {v1}, Lcn/kuaipan/android/a/g;-><init>()V

    const-string v2, "@ getContent()"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 47
    :cond_1a
    :goto_1a
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 48
    iget-boolean v0, p0, Lcn/kuaipan/android/http/k;->e:Z

    if-nez v0, :cond_4f

    .line 49
    iget-object v0, p0, Lcn/kuaipan/android/http/k;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_3d

    .line 50
    iget-boolean v0, p0, Lcn/kuaipan/android/http/k;->d:Z

    if-eqz v0, :cond_34

    .line 51
    iget-object v0, p0, Lcn/kuaipan/android/http/k;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/k;->getContentLength()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/http/IKscTransferListener;->a(J)V

    goto :goto_3d

    .line 53
    :cond_34
    iget-object v0, p0, Lcn/kuaipan/android/http/k;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/k;->getContentLength()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/http/IKscTransferListener;->b(J)V

    .line 56
    :cond_3d
    :goto_3d
    new-instance v0, Lcn/kuaipan/android/http/l;

    iget-object v5, p0, Lcn/kuaipan/android/http/k;->a:Lcn/kuaipan/android/http/i;

    iget-object v6, p0, Lcn/kuaipan/android/http/k;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-object v7, p0, Lcn/kuaipan/android/http/k;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    iget-boolean v8, p0, Lcn/kuaipan/android/http/k;->d:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/kuaipan/android/http/l;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcn/kuaipan/android/http/k;->e:Z

    goto :goto_50

    :cond_4f
    move-object v0, v4

    :goto_50
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcn/kuaipan/android/http/k;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/kuaipan/android/http/k;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    invoke-interface {v0}, Lcn/kuaipan/android/http/KssTransferStopper;->a()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1a

    .line 66
    :cond_d
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcn/kuaipan/android/a/g;

    invoke-direct {v0}, Lcn/kuaipan/android/a/g;-><init>()V

    const-string v1, "@ writeTo()"

    invoke-direct {p1, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 69
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Lcn/kuaipan/android/http/k;->e:Z

    if-nez v0, :cond_31

    .line 70
    new-instance v0, Lcn/kuaipan/android/http/m;

    iget-object v3, p0, Lcn/kuaipan/android/http/k;->a:Lcn/kuaipan/android/http/i;

    iget-object v4, p0, Lcn/kuaipan/android/http/k;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-object v5, p0, Lcn/kuaipan/android/http/k;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    iget-boolean v6, p0, Lcn/kuaipan/android/http/k;->d:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcn/kuaipan/android/http/m;-><init>(Ljava/io/OutputStream;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcn/kuaipan/android/http/k;->e:Z

    move-object p1, v0

    .line 74
    :cond_31
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
