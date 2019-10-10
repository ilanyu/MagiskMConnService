.class public abstract Lcom/xiaomi/mistatistic/sdk/controller/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/j$b;,
        Lcom/xiaomi/mistatistic/sdk/controller/j$a;
    }
.end annotation


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 453
    :cond_8
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 466
    :try_start_c
    new-instance v2, Ljava/net/URL;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    .line 468
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0x2710

    .line 469
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v2, 0x1

    .line 472
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 473
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    .line 474
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "POST"

    .line 477
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    .line 478
    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "multipart/form-data;boundary=*****"

    .line 479
    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6d

    .line 483
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 489
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4d

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    add-int/2addr p1, v0

    .line 490
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 491
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 493
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_8a} :catch_154
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_8a} :catch_147
    .catchall {:try_start_c .. :try_end_8a} :catchall_143

    :try_start_8a
    const-string v0, "--*****\r\n"

    .line 494
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\";filename=\""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\r\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 495
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p3, "\r\n"

    .line 497
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 500
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_c3} :catch_140
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_c3} :catch_13d
    .catchall {:try_start_8a .. :try_end_c3} :catchall_13a

    const/16 p2, 0x400

    .line 503
    :try_start_c5
    new-array p2, p2, [B

    .line 504
    :goto_c7
    invoke-virtual {p3, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d5

    .line 505
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 506
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_c7

    :cond_d5
    const-string p2, "\r\n"

    .line 509
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "--"

    .line 510
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "*****"

    .line 511
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "--"

    .line 512
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "\r\n"

    .line 513
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 517
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Lcom/xiaomi/mistatistic/sdk/controller/j$a;

    .line 519
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j$a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_109} :catch_136
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_109} :catch_132
    .catchall {:try_start_c5 .. :try_end_109} :catchall_12e

    .line 521
    :goto_109
    :try_start_109
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_113

    .line 522
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_109

    .line 524
    :cond_113
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_117} :catch_12c
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_117} :catch_12a
    .catchall {:try_start_109 .. :try_end_117} :catchall_128

    .line 532
    :try_start_117
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    .line 535
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 538
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_120} :catch_121

    goto :goto_127

    :catch_121
    move-exception p1

    const-string p2, ""

    .line 541
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_127
    return-object p0

    :catchall_128
    move-exception p0

    goto :goto_130

    :catch_12a
    move-exception p0

    goto :goto_134

    :catch_12c
    move-exception p0

    goto :goto_138

    :catchall_12e
    move-exception p0

    move-object v0, v1

    :goto_130
    move-object v1, p3

    goto :goto_159

    :catch_132
    move-exception p0

    move-object v0, v1

    :goto_134
    move-object v1, p3

    goto :goto_14a

    :catch_136
    move-exception p0

    move-object v0, v1

    :goto_138
    move-object v1, p3

    goto :goto_157

    :catchall_13a
    move-exception p0

    move-object v0, v1

    goto :goto_159

    :catch_13d
    move-exception p0

    move-object v0, v1

    goto :goto_14a

    :catch_140
    move-exception p0

    move-object v0, v1

    goto :goto_157

    :catchall_143
    move-exception p0

    move-object p1, v1

    move-object v0, p1

    goto :goto_159

    :catch_147
    move-exception p0

    move-object p1, v1

    move-object v0, p1

    .line 528
    :goto_14a
    :try_start_14a
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_154
    move-exception p0

    move-object p1, v1

    move-object v0, p1

    .line 526
    :goto_157
    throw p0
    :try_end_158
    .catchall {:try_start_14a .. :try_end_158} :catchall_158

    :catchall_158
    move-exception p0

    :goto_159
    if-eqz v1, :cond_161

    .line 532
    :try_start_15b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_161

    :catch_15f
    move-exception p1

    goto :goto_16c

    :cond_161
    :goto_161
    if-eqz p1, :cond_166

    .line 535
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    :cond_166
    if-eqz v0, :cond_171

    .line 538
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_16b} :catch_15f

    goto :goto_171

    :goto_16c
    const-string p2, ""

    .line 541
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    :cond_171
    :goto_171
    throw p0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .registers 3

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "10.0.0.172"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "?"

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http"

    .line 287
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 288
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    .line 290
    :cond_13
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 291
    new-instance p0, Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 293
    invoke-virtual {p1, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    .line 295
    :cond_30
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->e(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 296
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    .line 298
    :cond_3d
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    .line 300
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "X-Online-Host"

    .line 303
    invoke-virtual {p1, v0, p0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/j$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-nez v0, :cond_11

    const-string p0, "NetworkUtils"

    const-string p1, "Network connection is disabled."

    .line 148
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    .line 149
    invoke-interface {p3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f7

    const/4 v0, 0x0

    .line 162
    :try_start_18
    new-instance v1, Ljava/net/URL;

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/16 v1, 0x2710

    .line 163
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x3a98

    .line 164
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    .line 165
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "doHttpPost:"

    const-string v2, "paramsMap:%s"

    const/4 v3, 0x1

    .line 166
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/util/Map;)V

    .line 168
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c7

    .line 173
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 175
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_59} :catch_e3
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_59} :catch_d2
    .catchall {:try_start_18 .. :try_end_59} :catchall_cf

    .line 176
    :try_start_59
    array-length v2, p2

    invoke-virtual {v1, p2, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 177
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 178
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_63} :catch_c3
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_63} :catch_bf
    .catchall {:try_start_59 .. :try_end_63} :catchall_bb

    .line 180
    :try_start_63
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const-string v1, "doHttpPost:"

    const-string v2, "url:%s,responseCode:%d"

    const/4 v4, 0x2

    .line 181
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/j$a;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j$a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_90} :catch_e3
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_90} :catch_d2
    .catchall {:try_start_63 .. :try_end_90} :catchall_cf

    .line 183
    :try_start_90
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line.separator"

    .line 185
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9f
    if-eqz p0, :cond_ac

    .line 187
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_9f

    .line 191
    :cond_ac
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-interface {p3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_b6} :catch_b9
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_b6} :catch_b7
    .catchall {:try_start_90 .. :try_end_b6} :catchall_eb

    return-void

    :catch_b7
    move-exception p0

    goto :goto_d4

    :catch_b9
    move-exception p0

    goto :goto_e5

    :catchall_bb
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_ec

    :catch_bf
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_d4

    :catch_c3
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_e5

    .line 170
    :cond_c7
    :try_start_c7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nameValuePairs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_cf} :catch_e3
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_cf} :catch_d2
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception p0

    move-object p1, v0

    goto :goto_ec

    :catch_d2
    move-exception p0

    move-object p1, v0

    :goto_d4
    :try_start_d4
    const-string p2, "doHttpPost Throwable:"

    .line 200
    invoke-static {p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_e3
    move-exception p0

    move-object p1, v0

    :goto_e5
    const-string p2, "doHttpPost IOException:"

    .line 197
    invoke-static {p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    throw p0
    :try_end_eb
    .catchall {:try_start_d4 .. :try_end_eb} :catchall_eb

    :catchall_eb
    move-exception p0

    :goto_ec
    if-eqz v0, :cond_f1

    .line 205
    :try_start_ee
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_f1
    if-eqz p1, :cond_f6

    .line 208
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f6} :catch_f6

    .line 212
    :catch_f6
    :cond_f6
    throw p0

    .line 154
    :cond_f7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    .line 63
    sput-boolean p1, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    const-string v0, "pref_key_enable_network_connection"

    .line 64
    invoke-static {p0, v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/j$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string p0, "upload is disabled."

    .line 392
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;)V

    .line 393
    invoke-interface {p2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    return-void

    :cond_10
    if-eqz p1, :cond_1b

    const-string v0, "bc"

    .line 398
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_1b
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 401
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 404
    :try_start_27
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_5b

    :catch_2f
    move-exception p0

    .line 406
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception thrown from IPC."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_4b
    invoke-interface {p2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    const-string p0, "Uploading via sys service, metered network connected, skip"

    .line 410
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    goto :goto_5b

    .line 414
    :cond_54
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    :goto_5b
    return-void
.end method

.method protected static a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_47

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 222
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_47
    const-string v1, "mistats_sdkconfig_jafej!@#)(*e@!#"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sign"

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception p0

    const-string v0, "sign exception:"

    .line 231
    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_68
    return-void
.end method

.method public static a()Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 426
    :try_start_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 427
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 429
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    return v3

    .line 432
    :cond_1b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_28

    .line 433
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_29

    xor-int/lit8 v0, v1, 0x1

    return v0

    :cond_28
    return v0

    :catch_29
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    if-eqz p0, :cond_1b

    :try_start_2
    const-string v0, "connectivity"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 72
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 74
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    const-string v0, "isNetworkConnected"

    .line 77
    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6e

    .line 238
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6e

    .line 239
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 240
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2f

    goto :goto_16

    .line 245
    :cond_2f
    :try_start_2f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_57
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_57} :catch_58

    goto :goto_16

    :catch_58
    return-object v0

    .line 253
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_69

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 256
    :cond_69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6e
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/j$b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 548
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xiaomi.xmsf"

    const-string v3, "com.xiaomi.xmsf.push.service.HttpService"

    .line 549
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    invoke-direct {v2, p3, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/j$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/j$b;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "failed to bind"

    .line 588
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 589
    invoke-interface {p3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    goto :goto_2b

    :catch_22
    move-exception p0

    const-string p1, "uploadDataThroughSystemService"

    .line 592
    invoke-static {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    invoke-interface {p3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    .line 86
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_1d

    if-nez p0, :cond_c

    return v0

    .line 97
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_1c

    if-nez p0, :cond_13

    return v0

    .line 106
    :cond_13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    :catch_1c
    return v0

    :catch_1d
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 110
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "WIFI"

    return-object p0

    :cond_9
    :try_start_9
    const-string v0, "connectivity"

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_4f

    if-nez p0, :cond_16

    const-string p0, ""

    return-object p0

    .line 126
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_4c

    if-nez p0, :cond_1f

    const-string p0, ""

    return-object p0

    .line 134
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_4c
    const-string p0, ""

    return-object p0

    :catch_4f
    const-string p0, ""

    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 3

    const-string v0, "pref_key_enable_network_connection"

    const/4 v1, 0x1

    .line 141
    invoke-static {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "phone"

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 322
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    return v1

    :cond_16
    :try_start_16
    const-string v0, "connectivity"

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_55

    if-nez p0, :cond_21

    return v1

    .line 337
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_54

    if-nez p0, :cond_28

    return v1

    .line 344
    :cond_28
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_53

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_3a

    goto :goto_53

    :cond_3a
    const-string p0, "ctwap"

    .line 347
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_43

    return v1

    :cond_43
    const/4 v3, 0x1

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 v4, p0, -0x3

    const-string v5, "wap"

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_53
    :goto_53
    return v1

    :catch_54
    return v1

    :catch_55
    return v1
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "phone"

    .line 357
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 358
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    return v1

    :cond_16
    :try_start_16
    const-string v0, "connectivity"

    .line 365
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_47

    if-nez p0, :cond_21

    return v1

    .line 373
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_46

    if-nez p0, :cond_28

    return v1

    .line 380
    :cond_28
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3a

    goto :goto_45

    :cond_3a
    const-string v0, "ctwap"

    .line 383
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x1

    return p0

    :cond_44
    return v1

    :cond_45
    :goto_45
    return v1

    :catch_46
    return v1

    :catch_47
    return v1
.end method
