.class public Lcn/kuaipan/android/http/client/KscHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;,
        Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;,
        Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ksc.connect_start"

.field public static final b:Ljava/lang/String; = "ksc.connect_redirector"

.field public static final c:Ljava/lang/String; = "ksc.connect_type"

.field public static final d:Ljava/lang/String; = "ksc.message_list"

.field private static final e:Ljava/lang/String; = "KscHttpClient"

.field private static final f:I = 0x7530

.field private static final g:I = 0x7530

.field private static final h:I = 0x3a98

.field private static final i:I = 0x2710

.field private static final j:I = 0x1e

.field private static final k:I = 0x2000

.field private static l:Ljava/lang/String;


# instance fields
.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private p:Ljava/lang/RuntimeException;

.field private volatile q:Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;


# direct methods
.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 187
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AndroidHttpClient created and never closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->p:Ljava/lang/RuntimeException;

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->o:Z

    .line 203
    iput-boolean p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->m:Z

    .line 204
    iput-boolean p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->n:Z

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;ZZ)V
    .registers 5

    .line 192
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 187
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AndroidHttpClient created and never closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->p:Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->o:Z

    .line 195
    iput-boolean p3, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->m:Z

    .line 196
    iput-boolean p4, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->n:Z

    return-void
.end method

.method static synthetic a(Lcn/kuaipan/android/http/client/KscHttpClient;)Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;
    .registers 1

    .line 54
    iget-object p0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->q:Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcn/kuaipan/android/http/client/KscHttpClient;
    .registers 6

    .line 120
    invoke-static {p0}, Lcn/kuaipan/android/http/client/KscHttpClient;->b(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object p0

    .line 122
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 123
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 124
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lcn/kuaipan/android/http/client/d;->a()Lcn/kuaipan/android/http/client/d;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 126
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 130
    new-instance v0, Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-direct {v0, v1, p0}, Lcn/kuaipan/android/http/client/KscHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZZ)Lcn/kuaipan/android/http/client/KscHttpClient;
    .registers 8

    .line 81
    invoke-static {p0}, Lcn/kuaipan/android/http/client/KscHttpClient;->b(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object p0

    .line 83
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 84
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    invoke-static {}, Lcn/kuaipan/android/http/client/KscHttpClient;->c()Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 89
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 93
    new-instance v0, Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-direct {v0, v1, p0, p1, p2}, Lcn/kuaipan/android/http/client/KscHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;ZZ)V

    return-object v0
.end method

.method static synthetic a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lcn/kuaipan/android/http/client/KscHttpClient;->b(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curl "

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    if-nez p1, :cond_2f

    .line 386
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Authorization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cookie"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_44

    :cond_2f
    const-string v5, "--header \""

    .line 390
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" "

    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 395
    :cond_47
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p1

    .line 400
    instance-of v1, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v1, :cond_60

    .line 401
    move-object v1, p0

    check-cast v1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v1

    .line 402
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_60

    .line 403
    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p1

    :cond_60
    const-string v1, "\""

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    instance-of p1, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz p1, :cond_a8

    .line 412
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 413
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_a8

    .line 414
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 415
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    cmp-long p1, v1, v3

    if-gez p1, :cond_a3

    .line 416
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 417
    invoke-interface {p0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 418
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, " --data-ascii \""

    .line 421
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a8

    :cond_a3
    const-string p0, " [TOO MUCH DATA TO INCLUDE]"

    .line 423
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_a8
    :goto_a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;
    .registers 5

    .line 134
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v1, 0x0

    .line 138
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v2, 0x3a98

    .line 141
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x7530

    .line 142
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x2000

    .line 143
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const-wide/16 v2, 0x7530

    .line 145
    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    const/16 v2, 0x1e

    .line 146
    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 147
    new-instance v2, Lcn/kuaipan/android/http/client/KscHttpClient$1;

    invoke-direct {v2}, Lcn/kuaipan/android/http/client/KscHttpClient$1;-><init>()V

    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/4 v2, 0x1

    .line 156
    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 160
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const-string v1, "UTF-8"

    .line 162
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const-string v1, "UTF-8"

    .line 163
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 167
    invoke-static {}, Lcn/kuaipan/android/http/client/KscHttpClient;->d()Ljava/lang/String;

    move-result-object p0

    .line 169
    :cond_45
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c()Lorg/apache/http/conn/scheme/Scheme;
    .registers 5

    const/4 v0, 0x1

    .line 98
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcn/kuaipan/android/http/client/a;

    invoke-direct {v1}, Lcn/kuaipan/android/http/client/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    :try_start_c
    const-string v2, "TLS"

    .line 103
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 105
    new-instance v0, Lcn/kuaipan/android/http/client/d;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/kuaipan/android/http/client/d;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 111
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_29

    move-object v1, v2

    goto :goto_31

    :catch_29
    const/4 v0, 0x7

    const-string v2, "KscHttpClient"

    const-string v3, "System can\'t support TLS."

    .line 113
    invoke-static {v0, v2, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-object v1
.end method

.method private static d()Ljava/lang/String;
    .registers 4

    .line 176
    sget-object v0, Lcn/kuaipan/android/http/client/KscHttpClient;->l:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, "KscClient/1.0 (Linux; U; Android %s)"

    const/4 v1, 0x1

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuaipan/android/utils/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/client/KscHttpClient;->l:Ljava/lang/String;

    .line 180
    :cond_16
    sget-object v0, Lcn/kuaipan/android/http/client/KscHttpClient;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 274
    iget-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->p:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    .line 275
    invoke-virtual {p0}, Lcn/kuaipan/android/http/client/KscHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->p:Ljava/lang/RuntimeException;

    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_19

    const/4 v0, 0x2

    if-lt p2, v0, :cond_11

    const/4 v0, 0x7

    if-gt p2, v0, :cond_11

    .line 328
    new-instance v0, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcn/kuaipan/android/http/client/KscHttpClient$1;)V

    iput-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->q:Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;

    return-void

    .line 324
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Level is out of range [2..7]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->q:Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;

    return-void
.end method

.method protected createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .registers 2

    .line 252
    iget-boolean v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->m:Z

    if-eqz v0, :cond_a

    .line 253
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    goto :goto_f

    .line 255
    :cond_a
    new-instance v0, Lorg/apache/http/impl/NoConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/NoConnectionReuseStrategy;-><init>()V

    :goto_f
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 4

    .line 210
    iget-boolean v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->o:Z

    if-eqz v0, :cond_32

    .line 211
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 212
    new-instance v1, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 214
    new-instance v1, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 215
    new-instance v1, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 217
    new-instance v1, Lorg/apache/http/protocol/RequestConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 218
    new-instance v1, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    goto :goto_36

    .line 227
    :cond_32
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 229
    :goto_36
    new-instance v1, Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;-><init>(Lcn/kuaipan/android/http/client/KscHttpClient;Lcn/kuaipan/android/http/client/KscHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 230
    new-instance v1, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;

    invoke-direct {v1, p0, v2}, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;-><init>(Lcn/kuaipan/android/http/client/KscHttpClient;Lcn/kuaipan/android/http/client/KscHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    return-object v0
.end method

.method protected createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .registers 5

    .line 236
    new-instance v0, Lcn/kuaipan/android/http/client/b;

    iget-boolean v1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->n:Z

    const/4 v2, 0x3

    const/16 v3, 0x2710

    invoke-direct {v0, v2, v1, v3}, Lcn/kuaipan/android/http/client/b;-><init>(IZI)V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .registers 3

    .line 241
    new-instance v0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/client/KscHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .registers 2

    .line 246
    new-instance v0, Lcn/kuaipan/android/http/client/c;

    invoke-direct {v0}, Lcn/kuaipan/android/http/client/c;-><init>()V

    return-object v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 262
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
