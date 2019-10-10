.class Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;
.super Ljava/net/URLStreamHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/URLStreamHandler;


# direct methods
.method public constructor <init>(Ljava/net/URLStreamHandler;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 142
    const-class v2, Ljava/net/URLStreamHandler;

    const-string v3, "openConnection"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/net/URL;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 144
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URLConnection;

    .line 146
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_32

    .line 147
    new-instance v3, Lcom/xiaomi/mistatistic/sdk/network/d;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2}, Lcom/xiaomi/mistatistic/sdk/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 148
    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(J)V

    return-object v3

    .line 151
    :cond_32
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_41

    .line 152
    new-instance v3, Lcom/xiaomi/mistatistic/sdk/network/c;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2}, Lcom/xiaomi/mistatistic/sdk/network/c;-><init>(Ljava/net/HttpURLConnection;)V

    .line 153
    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(J)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_42

    return-object v3

    :cond_41
    return-object v2

    :catch_42
    move-exception v0

    .line 160
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    .line 161
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 169
    const-class v2, Ljava/net/URLStreamHandler;

    const-string v3, "openConnection"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/net/URL;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/net/Proxy;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 171
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 172
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/URLConnection;

    .line 174
    instance-of v2, p2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_39

    .line 175
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/network/d;

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v2, p2}, Lcom/xiaomi/mistatistic/sdk/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 176
    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(J)V

    return-object v2

    .line 179
    :cond_39
    instance-of v2, p2, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_48

    .line 180
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/network/c;

    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-direct {v2, p2}, Lcom/xiaomi/mistatistic/sdk/network/c;-><init>(Ljava/net/HttpURLConnection;)V

    .line 181
    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_49

    return-object v2

    :cond_48
    return-object p2

    :catch_49
    move-exception p2

    .line 188
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/b;

    .line 189
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    .line 190
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method
