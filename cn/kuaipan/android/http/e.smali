.class public Lcn/kuaipan/android/http/e;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# instance fields
.field private final a:Lcn/kuaipan/android/http/c;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/c;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 17
    iput-object p2, p0, Lcn/kuaipan/android/http/e;->a:Lcn/kuaipan/android/http/c;

    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/j;)Lcn/kuaipan/android/http/e;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_4
    invoke-static {p0, p2}, Lcn/kuaipan/android/http/e;->a(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/j;)Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 51
    new-instance p2, Lcn/kuaipan/android/http/e;

    invoke-direct {p2, p0, p1}, Lcn/kuaipan/android/http/e;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/c;)V

    return-object p2
.end method

.method private static a(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/j;)Lorg/apache/http/HttpEntity;
    .registers 3

    if-eqz p0, :cond_f

    .line 55
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    .line 59
    :cond_9
    new-instance v0, Lcn/kuaipan/android/http/d;

    invoke-direct {v0, p0, p1}, Lcn/kuaipan/android/http/d;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/j;)V

    return-object v0

    :cond_f
    :goto_f
    return-object p0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcn/kuaipan/android/http/e;->a:Lcn/kuaipan/android/http/c;

    if-nez v0, :cond_9

    .line 24
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_14

    .line 26
    :cond_9
    new-instance v0, Lcn/kuaipan/android/http/b;

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcn/kuaipan/android/http/e;->a:Lcn/kuaipan/android/http/c;

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/http/b;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/c;)V

    :goto_14
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_17

    .line 37
    invoke-virtual {p0}, Lcn/kuaipan/android/http/e;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    .line 39
    new-array v1, v1, [B

    .line 40
    :goto_a
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a

    :cond_16
    return-void

    .line 35
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
