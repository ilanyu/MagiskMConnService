.class public Lcn/kuaipan/android/http/client/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final a:Ljava/lang/String; = "TLS"

.field public static final b:Ljava/lang/String; = "SSL"

.field public static final c:Ljava/lang/String; = "SSLv2"

.field public static final d:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final e:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final f:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static final g:Lcn/kuaipan/android/http/client/d;


# instance fields
.field private final h:Ljavax/net/ssl/SSLContext;

.field private final i:Ljavax/net/ssl/SSLSocketFactory;

.field private final j:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private k:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lcn/kuaipan/android/http/client/d;->d:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 169
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcn/kuaipan/android/http/client/d;->e:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 171
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcn/kuaipan/android/http/client/d;->f:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 175
    new-instance v0, Lcn/kuaipan/android/http/client/d;

    invoke-direct {v0}, Lcn/kuaipan/android/http/client/d;-><init>()V

    sput-object v0, Lcn/kuaipan/android/http/client/d;->g:Lcn/kuaipan/android/http/client/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    sget-object v0, Lcn/kuaipan/android/http/client/d;->e:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcn/kuaipan/android/http/client/d;->k:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcn/kuaipan/android/http/client/d;->h:Ljavax/net/ssl/SSLContext;

    .line 249
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/http/client/d;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 250
    iput-object v0, p0, Lcn/kuaipan/android/http/client/d;->j:Lorg/apache/http/conn/scheme/HostNameResolver;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    sget-object v0, Lcn/kuaipan/android/http/client/d;->e:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcn/kuaipan/android/http/client/d;->k:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    if-nez p1, :cond_b

    const-string p1, "TLS"

    :cond_b
    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 201
    invoke-static {p2, p3}, Lcn/kuaipan/android/http/client/d;->a(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object p2

    goto :goto_14

    :cond_13
    move-object p2, v0

    :goto_14
    if-eqz p4, :cond_1a

    .line 205
    invoke-static {p4}, Lcn/kuaipan/android/http/client/d;->a(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 207
    :cond_1a
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/http/client/d;->h:Ljavax/net/ssl/SSLContext;

    .line 208
    iget-object p1, p0, Lcn/kuaipan/android/http/client/d;->h:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1, p2, v0, p5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 209
    iget-object p1, p0, Lcn/kuaipan/android/http/client/d;->h:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/http/client/d;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 210
    iput-object p6, p0, Lcn/kuaipan/android/http/client/d;->j:Lorg/apache/http/conn/scheme/HostNameResolver;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v1, "TLS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 227
    invoke-direct/range {v0 .. v6}, Lcn/kuaipan/android/http/client/d;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v1, "TLS"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 222
    invoke-direct/range {v0 .. v6}, Lcn/kuaipan/android/http/client/d;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v1, "TLS"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 216
    invoke-direct/range {v0 .. v6}, Lcn/kuaipan/android/http/client/d;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    sget-object v0, Lcn/kuaipan/android/http/client/d;->e:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcn/kuaipan/android/http/client/d;->k:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcn/kuaipan/android/http/client/d;->h:Ljavax/net/ssl/SSLContext;

    .line 237
    iput-object p1, p0, Lcn/kuaipan/android/http/client/d;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 238
    iput-object v0, p0, Lcn/kuaipan/android/http/client/d;->j:Lorg/apache/http/conn/scheme/HostNameResolver;

    return-void
.end method

.method public static a()Lcn/kuaipan/android/http/client/d;
    .registers 1

    .line 183
    sget-object v0, Lcn/kuaipan/android/http/client/d;->g:Lcn/kuaipan/android/http/client/d;

    return-object v0
.end method

.method private static a(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-eqz p0, :cond_1a

    .line 259
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    if-eqz p1, :cond_11

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {v0, p0, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 261
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    return-object p0

    .line 256
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keystore may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p0, :cond_12

    .line 270
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 272
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    return-object p0

    .line 267
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Keystore may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 376
    iput-object p1, p0, Lcn/kuaipan/android/http/client/d;->k:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-void

    .line 374
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hostname verifier may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .registers 2

    .line 380
    iget-object v0, p0, Lcn/kuaipan/android/http/client/d;->k:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_52

    if-eqz p6, :cond_4a

    if-eqz p1, :cond_7

    goto :goto_b

    .line 294
    :cond_7
    invoke-virtual {p0}, Lcn/kuaipan/android/http/client/d;->createSocket()Ljava/net/Socket;

    move-result-object p1

    :goto_b
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    if-nez p4, :cond_11

    if-lez p5, :cond_1c

    :cond_11
    if-gez p5, :cond_14

    const/4 p5, 0x0

    .line 302
    :cond_14
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 303
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 306
    :cond_1c
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result p4

    .line 307
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result p5

    .line 310
    iget-object p6, p0, Lcn/kuaipan/android/http/client/d;->j:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz p6, :cond_34

    .line 311
    new-instance p6, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcn/kuaipan/android/http/client/d;->j:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v0, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p6, v0, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_39

    .line 313
    :cond_34
    new-instance p6, Ljava/net/InetSocketAddress;

    invoke-direct {p6, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 316
    :goto_39
    invoke-virtual {p1, p6, p4}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 318
    invoke-virtual {p1, p5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 320
    :try_start_3f
    iget-object p3, p0, Lcn/kuaipan/android/http/client/d;->k:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {p3, p2, p1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_45

    return-object p1

    :catch_45
    move-exception p2

    .line 325
    :try_start_46
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_49

    .line 328
    :catch_49
    throw p2

    .line 291
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target host may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcn/kuaipan/android/http/client/d;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcn/kuaipan/android/http/client/d;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 367
    iget-object p3, p0, Lcn/kuaipan/android/http/client/d;->k:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {p3, p2, p1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1e

    .line 350
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_16

    .line 354
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    .line 355
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Socket is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Socket not created by this factory."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Socket may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
