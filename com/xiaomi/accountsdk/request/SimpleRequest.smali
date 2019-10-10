.class public final Lcom/xiaomi/accountsdk/request/SimpleRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "utf-8"

.field public static final b:Ljava/lang/String; = "Location"

.field public static final c:Ljava/lang/String; = "User-Agent"

.field private static final d:Z = false

.field private static final e:Ljava/util/logging/Logger;

.field private static final f:I = 0x7530

.field private static g:Lcom/xiaomi/accountsdk/request/e; = null

.field private static final h:Ljava/lang/String; = "&"

.field private static final i:Ljava/lang/String; = "="

.field private static j:Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;

.field private static k:Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    .line 73
    new-instance v0, Lcom/xiaomi/accountsdk/request/SimpleRequest$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->j:Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;

    const/4 v0, 0x0

    .line 100
    sput-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->k:Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;
    .registers 1

    .line 87
    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->j:Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;

    return-object v0
.end method

.method protected static a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 483
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object v1

    .line 486
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_13

    :catch_e
    move-exception v1

    .line 488
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v0

    :goto_13
    if-nez v2, :cond_16

    return-object v0

    .line 494
    :cond_16
    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/t;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 495
    new-instance v1, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;-><init>(Ljava/util/Map;)V

    .line 496
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->a(Ljava/util/Map;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 234
    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 241
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, p3

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 243
    invoke-static {v6, p2, p3, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_108

    const/4 p2, 0x1

    .line 249
    :try_start_19
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p3, "GET"

    .line 250
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 253
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 255
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 256
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object p3

    invoke-interface {p3, p0, p2}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;I)V

    const/16 p0, 0xc8

    if-ne p2, p0, :cond_66

    .line 260
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 261
    new-instance p2, Ljava/net/CookieManager;

    invoke-direct {p2}, Ljava/net/CookieManager;-><init>()V

    .line 262
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    .line 263
    invoke-virtual {p2, p3, p0}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 264
    invoke-virtual {p2}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object p2

    .line 265
    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    .line 266
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/t;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 267
    new-instance p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;

    .line 268
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;-><init>(Ljava/io/InputStream;)V

    .line 269
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->a(Ljava/util/Map;)V

    return-object p0

    :cond_66
    const/16 p0, 0x193

    if-eq p2, p0, :cond_f8

    const/16 p0, 0x191

    if-eq p2, p0, :cond_cf

    const/16 p0, 0x190

    if-eq p2, p0, :cond_cf

    .line 282
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http status error when GET: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 p0, 0x12d

    if-ne p2, p0, :cond_b8

    .line 284
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected redirect from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Location"

    .line 286
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 288
    :cond_b8
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected http res code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_cf
    new-instance p0, Lcom/xiaomi/accountsdk/request/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authentication failure for get, code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/accountsdk/request/c;-><init>(ILjava/lang/String;)V

    const-string p2, "WWW-Authenticate"

    .line 278
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/c;->b(Ljava/lang/String;)V

    const-string p2, "CA-DISABLE-SECONDS"

    .line 279
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/c;->c(Ljava/lang/String;)V

    .line 280
    throw p0

    .line 272
    :cond_f8
    new-instance p0, Lcom/xiaomi/accountsdk/request/a;

    const-string p1, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/accountsdk/request/a;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_100
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_100} :catch_100

    .line 291
    :catch_100
    new-instance p0, Ljava/io/IOException;

    const-string p1, "protocol error"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_108
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    const-string p1, "failed to create URLConnection"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 246
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to create connection"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 332
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->k:Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;

    if-eqz v0, :cond_10

    .line 341
    sget-object v1, Lcom/xiaomi/accountsdk/request/SimpleRequest;->k:Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v6, p5

    move-object v7, p6

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;Ljava/util/Map;)V

    :cond_10
    if-eqz p4, :cond_17

    .line 348
    invoke-static {p0, p4}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, p0

    .line 350
    :goto_18
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v1

    move-object v2, p0

    move-object v3, p4

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 351
    invoke-static {v0, p2, p3, p6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;

    move-result-object p2

    if-eqz p2, :cond_1dd

    const/4 p4, 0x1

    .line 357
    :try_start_2d
    invoke-virtual {p2, p4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 358
    invoke-virtual {p2, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p4, "POST"

    .line 359
    invoke-virtual {p2, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz p1, :cond_64

    .line 362
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_64

    const-string p4, "&"

    .line 363
    invoke-static {p1, p4}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    .line 365
    new-instance p6, Ljava/io/BufferedOutputStream;

    invoke-direct {p6, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_52
    .catch Ljava/net/ProtocolException; {:try_start_2d .. :try_end_52} :catch_1d1
    .catchall {:try_start_2d .. :try_end_52} :catchall_1cf

    :try_start_52
    const-string p4, "utf-8"

    .line 367
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_5f

    .line 369
    :try_start_5b
    invoke-static {p6}, Lcom/xiaomi/accountsdk/utils/m;->a(Ljava/io/OutputStream;)V

    goto :goto_64

    :catchall_5f
    move-exception p0

    invoke-static {p6}, Lcom/xiaomi/accountsdk/utils/m;->a(Ljava/io/OutputStream;)V

    throw p0

    .line 373
    :cond_64
    :goto_64
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 374
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object p4

    invoke-interface {p4, p0, p1}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;I)V

    const/16 p4, 0xc8

    if-eq p1, p4, :cond_113

    const/16 p4, 0x12e

    if-ne p1, p4, :cond_79

    goto/16 :goto_113

    :cond_79
    const/16 p0, 0x193

    if-eq p1, p0, :cond_10b

    const/16 p0, 0x191

    if-eq p1, p0, :cond_e2

    const/16 p0, 0x190

    if-eq p1, p0, :cond_e2

    .line 447
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "http status error when POST: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 p0, 0x12d

    if-ne p1, p0, :cond_cb

    .line 449
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected redirect from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p4

    invoke-virtual {p4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Location"

    .line 451
    invoke-virtual {p2, p4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 449
    invoke-virtual {p0, p3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 453
    :cond_cb
    new-instance p0, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected http res code: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 441
    :cond_e2
    new-instance p0, Lcom/xiaomi/accountsdk/request/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "authentication failure for post, code: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/accountsdk/request/c;-><init>(ILjava/lang/String;)V

    const-string p1, "WWW-Authenticate"

    .line 443
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/c;->b(Ljava/lang/String;)V

    const-string p1, "CA-DISABLE-SECONDS"

    .line 444
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/c;->c(Ljava/lang/String;)V

    .line 445
    throw p0

    .line 437
    :cond_10b
    new-instance p0, Lcom/xiaomi/accountsdk/request/a;

    const-string p3, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/accountsdk/request/a;-><init>(ILjava/lang/String;)V

    throw p0

    .line 378
    :cond_113
    :goto_113
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p4

    .line 379
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p6

    .line 381
    invoke-virtual {p6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 382
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 383
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_13a

    const-string v3, "host"

    .line 384
    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    const-string v3, "host"

    .line 386
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13a
    const-string p3, "c.id.mi.com"

    .line 388
    invoke-virtual {v2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_147

    const-string p3, "account.xiaomi.com"

    .line 390
    invoke-virtual {v2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_147
    new-instance p3, Lcom/xiaomi/accountsdk/request/SimpleRequest$2;

    invoke-direct {p3, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$2;-><init>(Ljava/util/HashSet;)V

    .line 404
    new-instance v3, Ljava/net/CookieManager;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p3}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 405
    invoke-virtual {v3, p6, p4}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 406
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 407
    invoke-virtual {v3}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p6

    .line 408
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_162
    :goto_162
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_184

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 409
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 410
    invoke-interface {p6, v3}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_162

    .line 412
    invoke-interface {p3, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_162

    .line 415
    :cond_184
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_1ae

    .line 417
    new-instance p5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 418
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {p5, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_19b
    .catch Ljava/net/ProtocolException; {:try_start_5b .. :try_end_19b} :catch_1d1
    .catchall {:try_start_5b .. :try_end_19b} :catchall_1cf

    .line 422
    :goto_19b
    :try_start_19b
    invoke-virtual {p5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a5

    .line 423
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a4
    .catchall {:try_start_19b .. :try_end_1a4} :catchall_1a9

    goto :goto_19b

    .line 426
    :cond_1a5
    :try_start_1a5
    invoke-static {p5}, Lcom/xiaomi/accountsdk/utils/m;->a(Ljava/io/Reader;)V

    goto :goto_1ae

    :catchall_1a9
    move-exception p0

    invoke-static {p5}, Lcom/xiaomi/accountsdk/utils/m;->a(Ljava/io/Reader;)V

    throw p0

    .line 429
    :cond_1ae
    :goto_1ae
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 430
    new-instance p6, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-direct {p6, p5}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p6, p3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->b(Ljava/util/Map;)V

    .line 432
    invoke-virtual {p6, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(I)V

    .line 433
    invoke-static {p4}, Lcom/xiaomi/accountsdk/utils/t;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/util/Map;)V

    .line 434
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object p1

    invoke-interface {p1, p0, p5, p4, p3}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1cb
    .catch Ljava/net/ProtocolException; {:try_start_1a5 .. :try_end_1cb} :catch_1d1
    .catchall {:try_start_1a5 .. :try_end_1cb} :catchall_1cf

    .line 458
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p6

    :catchall_1cf
    move-exception p0

    goto :goto_1d9

    .line 456
    :catch_1d1
    :try_start_1d1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "protocol error"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1d9
    .catchall {:try_start_1d1 .. :try_end_1d9} :catchall_1cf

    .line 458
    :goto_1d9
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    .line 353
    :cond_1dd
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    const-string p1, "failed to create URLConnection"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 354
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to create connection"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 138
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->k:Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;

    if-eqz v0, :cond_10

    .line 146
    sget-object v1, Lcom/xiaomi/accountsdk/request/SimpleRequest;->k:Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;Ljava/util/Map;)V

    .line 148
    :cond_10
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {v0, p3, p2, p5}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;

    move-result-object p2

    if-eqz p2, :cond_16d

    const/4 p3, 0x1

    .line 156
    :try_start_28
    invoke-virtual {p2, p3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p3, "GET"

    .line 157
    invoke-virtual {p2, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 160
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 161
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object p5

    invoke-interface {p5, p1, p3}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;I)V

    .line 162
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    move-result-object p5

    if-eqz p5, :cond_53

    const-string p5, "Date"

    .line 163
    invoke-virtual {p2, p5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_53

    .line 165
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    move-result-object v1

    invoke-interface {v1, p0, p5}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    const/16 p0, 0xc8

    if-eq p3, p0, :cond_f7

    const/16 p0, 0x12e

    if-ne p3, p0, :cond_5d

    goto/16 :goto_f7

    :cond_5d
    const/16 p0, 0x193

    if-eq p3, p0, :cond_ef

    const/16 p0, 0x191

    if-eq p3, p0, :cond_c6

    const/16 p0, 0x190

    if-eq p3, p0, :cond_c6

    .line 210
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "http status error when GET: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 p0, 0x12d

    if-ne p3, p0, :cond_af

    .line 212
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected redirect from "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p4

    invoke-virtual {p4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " to "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Location"

    .line 214
    invoke-virtual {p2, p4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 216
    :cond_af
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected http res code: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_c6
    new-instance p0, Lcom/xiaomi/accountsdk/request/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "authentication failure for get, code: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/xiaomi/accountsdk/request/c;-><init>(ILjava/lang/String;)V

    const-string p1, "WWW-Authenticate"

    .line 206
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/c;->b(Ljava/lang/String;)V

    const-string p1, "CA-DISABLE-SECONDS"

    .line 207
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/c;->c(Ljava/lang/String;)V

    .line 208
    throw p0

    .line 199
    :cond_ef
    new-instance p0, Lcom/xiaomi/accountsdk/request/a;

    const-string p1, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {p0, p3, p1}, Lcom/xiaomi/accountsdk/request/a;-><init>(ILjava/lang/String;)V

    throw p0

    .line 172
    :cond_f7
    :goto_f7
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 173
    new-instance p5, Ljava/net/CookieManager;

    invoke-direct {p5}, Ljava/net/CookieManager;-><init>()V

    .line 174
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 175
    invoke-virtual {p5, v0, p0}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 176
    invoke-virtual {p5}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p5

    invoke-interface {p5, v0}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object p5

    .line 177
    invoke-static {p5}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_13d

    .line 180
    new-instance p4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 181
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {p4, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_12a} :catch_160
    .catchall {:try_start_28 .. :try_end_12a} :catchall_15e

    .line 184
    :goto_12a
    :try_start_12a
    invoke-virtual {p4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_133
    .catchall {:try_start_12a .. :try_end_133} :catchall_138

    goto :goto_12a

    .line 188
    :cond_134
    :try_start_134
    invoke-static {p4}, Lcom/xiaomi/accountsdk/utils/m;->a(Ljava/io/Reader;)V

    goto :goto_13d

    :catchall_138
    move-exception p0

    invoke-static {p4}, Lcom/xiaomi/accountsdk/utils/m;->a(Ljava/io/Reader;)V

    throw p0

    .line 191
    :cond_13d
    :goto_13d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 192
    new-instance v0, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-direct {v0, p4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p5}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->b(Ljava/util/Map;)V

    .line 194
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/t;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/util/Map;)V

    .line 195
    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(I)V

    .line 196
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object p3

    invoke-interface {p3, p1, p4, p0, p5}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_15a} :catch_160
    .catchall {:try_start_134 .. :try_end_15a} :catchall_15e

    .line 222
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_15e
    move-exception p0

    goto :goto_169

    :catch_160
    move-exception p0

    .line 219
    :try_start_161
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/Exception;)V

    .line 220
    throw p0
    :try_end_169
    .catchall {:try_start_161 .. :try_end_169} :catchall_15e

    .line 222
    :goto_169
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    .line 152
    :cond_16d
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    const-string p1, "failed to create URLConnection"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 153
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to create connection"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "utf-8"

    .line 568
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3f

    .line 116
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p1, :cond_36

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 120
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1a

    .line 124
    :cond_36
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_3f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "origin is not allowed null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 578
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 580
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_26

    .line 582
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 587
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 590
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 504
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception p0

    .line 506
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v0

    :goto_c
    if-nez v1, :cond_16

    .line 509
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->e:Ljava/util/logging/Logger;

    const-string p1, "failed to init url"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-object v0

    :cond_16
    if-nez p3, :cond_1e

    const/16 p0, 0x7530

    .line 513
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 516
    :cond_1e
    :try_start_1e
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 517
    sget-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->j:Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;

    invoke-interface {p0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 519
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 520
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 521
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string p3, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 522
    invoke-virtual {p0, p3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_53

    const-string p3, "User-Agent"

    .line 525
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_54

    :cond_53
    const/4 v1, 0x1

    :cond_54
    if-eqz v1, :cond_69

    .line 526
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_69

    const-string p3, "User-Agent"

    .line 527
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    if-nez p1, :cond_70

    .line 530
    new-instance p1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    :cond_70
    const-string p3, "sdkVersion"

    .line 532
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/z;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Cookie"

    const-string v1, "; "

    .line 533
    invoke-static {p1, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a4

    .line 535
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 536
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_a3} :catch_a5

    goto :goto_8e

    :cond_a4
    return-object p0

    :catch_a5
    move-exception p0

    .line 541
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method protected static a(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 596
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    .line 597
    invoke-virtual {v1}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v2

    if-nez v2, :cond_9

    .line 598
    invoke-virtual {v1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 599
    invoke-virtual {v1}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_9

    .line 601
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_29
    return-object v0
.end method

.method static a(Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;)V
    .registers 1

    .line 84
    sput-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->j:Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;)V
    .registers 1

    .line 103
    sput-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->k:Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/request/e;)V
    .registers 1

    .line 65
    sput-object p0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->g:Lcom/xiaomi/accountsdk/request/e;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 309
    invoke-static {p0, p1, p3, p2, p4}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 310
    invoke-static {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 301
    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 324
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_5f

    .line 547
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5f

    .line 550
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 552
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2b

    .line 554
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_2b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 558
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4c
    const-string v1, ""

    .line 559
    :goto_4e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 563
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5f
    :goto_5f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    .line 107
    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$RequestLoggerForTest;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 473
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 475
    invoke-static {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 317
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Lcom/xiaomi/accountsdk/request/e;
    .registers 1

    .line 45
    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->g:Lcom/xiaomi/accountsdk/request/e;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 466
    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method private static d()Lcom/xiaomi/accountsdk/utils/j;
    .registers 1

    .line 227
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/i;->a()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v0

    return-object v0
.end method
