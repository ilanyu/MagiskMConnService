.class public Lcn/kuaipan/android/http/client/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 44
    invoke-direct {p0, v1, v0, v0}, Lcn/kuaipan/android/http/client/b;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcn/kuaipan/android/http/client/b;->a:I

    .line 36
    iput-boolean p2, p0, Lcn/kuaipan/android/http/client/b;->b:Z

    .line 37
    iput p3, p0, Lcn/kuaipan/android/http/client/b;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcn/kuaipan/android/http/client/b;->b:Z

    return v0
.end method

.method public b()I
    .registers 2

    .line 117
    iget v0, p0, Lcn/kuaipan/android/http/client/b;->a:I

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 13

    if-eqz p1, :cond_81

    if-eqz p3, :cond_79

    .line 61
    iget v0, p0, Lcn/kuaipan/android/http/client/b;->a:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_a

    return v1

    .line 65
    :cond_a
    instance-of p2, p1, Lorg/apache/http/NoHttpResponseException;

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    return v0

    .line 69
    :cond_10
    instance-of p2, p1, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_15

    return v1

    .line 73
    :cond_15
    instance-of p2, p1, Ljava/net/UnknownHostException;

    if-eqz p2, :cond_1a

    return v1

    .line 77
    :cond_1a
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_1f

    return v1

    :cond_1f
    const-string p2, "http.request_sent"

    .line 82
    invoke-interface {p3, p2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    const-string v2, "ksc.connect_start"

    .line 83
    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "http.request"

    .line 85
    invoke-interface {p3, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/impl/client/RequestWrapper;

    const-string v4, "ksc.connect_redirector"

    .line 87
    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/kuaipan/android/http/client/e;

    if-eqz p2, :cond_49

    .line 88
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_49

    const/4 p2, 0x1

    goto :goto_4a

    :cond_49
    const/4 p2, 0x0

    :goto_4a
    if-eqz v2, :cond_51

    .line 89
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_53

    :cond_51
    const-wide/16 v5, 0x0

    .line 90
    :goto_53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    if-eqz p2, :cond_71

    .line 91
    iget-boolean p2, p0, Lcn/kuaipan/android/http/client/b;->b:Z

    if-eqz p2, :cond_63

    invoke-virtual {v3}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result p2

    if-nez p2, :cond_71

    :cond_63
    instance-of p1, p1, Ljava/net/SocketException;

    if-eqz p1, :cond_70

    sub-long/2addr v7, v5

    iget p1, p0, Lcn/kuaipan/android/http/client/b;->c:I

    int-to-long p1, p1

    cmp-long p1, v7, p1

    if-gtz p1, :cond_70

    goto :goto_71

    :cond_70
    return v1

    :cond_71
    :goto_71
    if-eqz v4, :cond_78

    .line 97
    invoke-interface {v4, p3}, Lcn/kuaipan/android/http/client/e;->a(Lorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    return p1

    :cond_78
    return v0

    .line 58
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exception parameter may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
