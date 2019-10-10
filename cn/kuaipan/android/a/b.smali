.class public Lcn/kuaipan/android/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuaipan/android/http/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->a()Ljava/lang/Throwable;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_1f

    .line 122
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1c

    if-nez p0, :cond_13

    const-string p0, "No response."

    goto :goto_17

    .line 126
    :cond_13
    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    .line 125
    :goto_17
    invoke-static {v0, p0}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0

    .line 123
    :cond_1c
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1f
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 28
    :cond_4
    instance-of v1, p0, Lcn/kuaipan/android/a/d;

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 32
    :cond_12
    instance-of v1, p0, Ljava/net/SocketException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Ljava/nio/channels/ConnectionPendingException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Lorg/apache/http/ConnectionClosedException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Ljava/net/HttpRetryException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Lorg/apache/http/NoHttpResponseException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Ljava/net/ProtocolException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Lorg/apache/http/client/ClientProtocolException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Ljavax/net/ssl/SSLException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Ljava/net/UnknownServiceException;

    if-nez v1, :cond_4a

    instance-of v1, p0, Lorg/apache/http/HttpException;

    if-nez v1, :cond_4a

    instance-of p0, p0, Lcn/kuaipan/android/a/h;

    if-eqz p0, :cond_4b

    :cond_4a
    const/4 v0, 0x1

    :cond_4b
    return v0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .registers 1

    .line 43
    invoke-static {p0}, Lcn/kuaipan/android/a/b;->f(Ljava/lang/Throwable;)Lcn/kuaipan/android/a/g;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 47
    invoke-static {p0}, Lcn/kuaipan/android/a/b;->f(Ljava/lang/Throwable;)Lcn/kuaipan/android/a/g;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public static d(Ljava/lang/Throwable;)Ljava/lang/InterruptedException;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 73
    :cond_4
    instance-of v1, p0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_b

    .line 74
    check-cast p0, Ljava/lang/InterruptedException;

    return-object p0

    .line 77
    :cond_b
    sget-boolean v1, Lcn/kuaipan/android/b;->a:Z

    if-eqz v1, :cond_10

    return-object v0

    .line 81
    :cond_10
    instance-of v1, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v1, :cond_20

    .line 82
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/InterruptedException;

    return-object p0

    .line 85
    :cond_20
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_38

    .line 86
    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v1, :cond_38

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_38

    .line 87
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/InterruptedException;

    return-object p0

    :cond_38
    return-object v0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 99
    :cond_3
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_36

    .line 103
    sget-boolean v0, Lcn/kuaipan/android/b;->a:Z

    if-eqz v0, :cond_c

    return-void

    .line 107
    :cond_c
    instance-of v0, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-nez v0, :cond_2a

    .line 111
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_29

    .line 112
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_29

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1d

    goto :goto_29

    .line 113
    :cond_1d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/InterruptedException;

    throw p0

    :cond_29
    :goto_29
    return-void

    .line 108
    :cond_2a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/InterruptedException;

    throw p0

    .line 100
    :cond_36
    check-cast p0, Ljava/lang/InterruptedException;

    throw p0
.end method

.method private static f(Ljava/lang/Throwable;)Lcn/kuaipan/android/a/g;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x2

    .line 58
    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v1, v3

    .line 59
    array-length p0, v1

    :goto_12
    if-ge v2, p0, :cond_20

    aget-object v3, v1, v2

    .line 60
    instance-of v4, v3, Lcn/kuaipan/android/a/g;

    if-eqz v4, :cond_1d

    .line 61
    check-cast v3, Lcn/kuaipan/android/a/g;

    return-object v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    return-object v0
.end method
