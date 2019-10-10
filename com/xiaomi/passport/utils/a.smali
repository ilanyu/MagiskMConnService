.class public Lcom/xiaomi/passport/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AntiSpamIpAddressController"

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String; = "ipAddress"

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ip/next"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/utils/a;->b:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/utils/a;->d:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/xiaomi/passport/utils/a;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/passport/utils/a;)Ljava/lang/String;
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/xiaomi/passport/utils/a;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    :try_start_2
    invoke-static {p1, v1, v1, v0}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    if-nez p1, :cond_10

    const-string p1, "AntiSpamIpAddressController"

    const-string v0, "ipv6NextRequest: next url response content is null"

    .line 125
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 128
    :cond_10
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 130
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "description"

    .line 131
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AntiSpamIpAddressController"

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ipv6NextRequest--code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,desc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_54

    const-string v0, "ipAddress"

    .line 134
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4b} :catch_4c
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_2 .. :try_end_4b} :catch_4c
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_2 .. :try_end_4b} :catch_4c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_4b} :catch_4c

    return-object p1

    :catch_4c
    move-exception p1

    const-string v0, "AntiSpamIpAddressController"

    const-string v2, "ipv6NextRequest"

    .line 137
    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    return-object v1
.end method

.method static synthetic d()Z
    .registers 1

    .line 32
    invoke-static {}, Lcom/xiaomi/passport/utils/a;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Ljava/util/Map;
    .registers 1

    .line 32
    sget-object v0, Lcom/xiaomi/passport/utils/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 32
    sget-object v0, Lcom/xiaomi/passport/utils/a;->e:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private static g()Z
    .registers 5

    const/4 v0, 0x1

    .line 58
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 60
    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 61
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 62
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 64
    :cond_15
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 65
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 66
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_15

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_15

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fe80"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_35
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_35} :catch_3a

    if-nez v3, :cond_15

    return v0

    :cond_38
    const/4 v0, 0x0

    return v0

    :catch_3a
    move-exception v1

    const-string v2, "AntiSpamIpAddressController"

    .line 72
    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private h()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 93
    :try_start_1
    sget-object v1, Lcom/xiaomi/passport/utils/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 94
    invoke-static {v1, v0, v0, v2}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v1, "AntiSpamIpAddressController"

    const-string v2, "getAntiSpamIPAddress: response content is null"

    .line 96
    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 99
    :cond_12
    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 101
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "description"

    .line 102
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AntiSpamIpAddressController"

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAntiSpamIPAddress--code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,desc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_83

    const-string v1, "data"

    .line 105
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hasNextUrl"

    .line 107
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "AntiSpamIpAddressController"

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_83

    const-string v1, "url"

    .line 110
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-direct {p0, v1}, Lcom/xiaomi/passport/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7a} :catch_7b
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_1 .. :try_end_7a} :catch_7b
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_1 .. :try_end_7a} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7a} :catch_7b

    return-object v1

    :catch_7b
    move-exception v1

    const-string v2, "AntiSpamIpAddressController"

    const-string v3, "getAntiSpamIPAddress"

    .line 115
    invoke-static {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_83
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/utils/AntiSpamIpAddressController$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/utils/AntiSpamIpAddressController$1;-><init>(Lcom/xiaomi/passport/utils/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    :try_start_0
    sget-object v0, Lcom/xiaomi/passport/utils/a;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "AntiSpamIpAddressController"

    const-string v2, "blockingGetIPAddressCookie"

    .line 82
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_12
    sget-object v0, Lcom/xiaomi/passport/utils/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/xiaomi/passport/utils/a;->d:Ljava/util/Map;

    return-object v0
.end method
