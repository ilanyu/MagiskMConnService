.class public Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;
    }
.end annotation


# static fields
.field private static final a:I = 0x7530

.field private static final b:I = 0x493e0

.field private static final c:Ljava/lang/String; = "OpenPdcRequest"

.field private static final d:Ljava/lang/String; = "UTF-8"

.field private static final e:Ljava/lang/String; = "Location"

.field private static final f:Ljava/lang/String; = "Retry-After"

.field private static final g:Ljava/lang/String; = "X-XIAOMI-SUPPORT-REDIRECT"

.field private static final h:Ljava/lang/String; = "X-XIAOMI-REDIRECT-COUNT"

.field private static final i:Ljava/lang/String; = "X-XIAOMI-USER-COUNTRY"

.field private static final j:Ljava/lang/String; = "User-Agent"

.field private static final k:Ljava/lang/String; = "Content-Type"

.field private static final l:Ljava/lang/String; = "Origin"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    .line 24
    invoke-static {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->b(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    const-string v0, "OpenPdcRequest"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request started at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p1, p3}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_24
    const/4 v1, 0x0

    .line 174
    :try_start_25
    invoke-static {p1, p4}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Ljava/lang/String;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_29} :catch_1d8
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_1aa
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_29} :catch_19c
    .catchall {:try_start_25 .. :try_end_29} :catchall_199

    .line 175
    :try_start_29
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "X-XIAOMI-SUPPORT-REDIRECT"

    const-string v2, "true"

    .line 177
    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Origin"

    const-string v2, "Default"

    .line 178
    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 179
    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_4f

    const-string v1, "X-XIAOMI-REDIRECT-COUNT"

    .line 181
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    if-eqz p0, :cond_69

    const-string v1, "X-XIAOMI-USER-COUNTRY"

    .line 184
    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_69

    const-string v1, "User-Agent"

    .line 186
    invoke-interface {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_69
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 192
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 193
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 194
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_7b} :catch_196
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_7b} :catch_193
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_7b} :catch_190
    .catchall {:try_start_29 .. :try_end_7b} :catchall_18e

    :try_start_7b
    const-string v1, "UTF-8"

    .line 196
    invoke-virtual {p5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_88

    .line 199
    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_8d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_84 .. :try_end_87} :catch_196
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_87} :catch_190
    .catchall {:try_start_84 .. :try_end_87} :catchall_18e

    goto :goto_8d

    :catchall_88
    move-exception p0

    :try_start_89
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_89 .. :try_end_8c} :catch_196
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_8c} :catch_190
    .catchall {:try_start_89 .. :try_end_8c} :catchall_18e

    .line 202
    :catch_8c
    :try_start_8c
    throw p0

    .line 206
    :catch_8d
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x133

    if-eq v1, v2, :cond_145

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_ff

    packed-switch v1, :pswitch_data_1ec

    const/16 p0, 0xc8

    if-ne v1, p0, :cond_a5

    .line 246
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_a9

    .line 248
    :cond_a5
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 250
    :goto_a9
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p4, 0x400

    .line 251
    new-array p4, p4, [B

    .line 253
    :goto_b2
    invoke-virtual {p0, p4}, Ljava/io/InputStream;->read([B)I

    move-result p5

    const/4 v0, -0x1

    if-eq p5, v0, :cond_bd

    .line 254
    invoke-virtual {p2, p4, p3, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b2

    .line 256
    :cond_bd
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 257
    new-instance p2, Ljava/lang/String;

    const-string p4, "UTF-8"

    invoke-direct {p2, p0, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 258
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    new-instance p4, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    invoke-direct {p4, v1, p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>(ILorg/json/JSONObject;)V

    .line 262
    iget-boolean p0, p4, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    if-nez p0, :cond_f9

    const-string p0, "OpenPdcRequest"

    .line 263
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got error: status "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with body "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p5, Ljava/lang/Throwable;

    invoke-direct {p5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8c .. :try_end_f9} :catch_196
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_f9} :catch_193
    .catch Lorg/json/JSONException; {:try_start_8c .. :try_end_f9} :catch_190
    .catchall {:try_start_8c .. :try_end_f9} :catchall_18e

    :cond_f9
    if-eqz p1, :cond_fe

    .line 287
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_fe
    return-object p4

    :cond_ff
    const/16 p0, 0x12c

    :try_start_101
    const-string p2, "Retry-After"

    .line 210
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 211
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_10b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_101 .. :try_end_10b} :catch_196
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_10b} :catch_193
    .catch Lorg/json/JSONException; {:try_start_101 .. :try_end_10b} :catch_190
    .catchall {:try_start_101 .. :try_end_10b} :catchall_18e

    if-nez p4, :cond_116

    .line 213
    :try_start_10d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_115
    .catch Ljava/lang/NumberFormatException; {:try_start_10d .. :try_end_115} :catch_116
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10d .. :try_end_115} :catch_196
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_115} :catch_193
    .catch Lorg/json/JSONException; {:try_start_10d .. :try_end_115} :catch_190
    .catchall {:try_start_10d .. :try_end_115} :catchall_18e

    move p0, p2

    :catch_116
    :cond_116
    :try_start_116
    const-string p2, "OpenPdcRequest"

    .line 218
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Got retry after "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " seconds"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance p2, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    invoke-direct {p2}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>()V

    .line 220
    sget-object p4, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p4, p2, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long p4, p0

    .line 221
    iput-wide p4, p2, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J
    :try_end_13f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_116 .. :try_end_13f} :catch_196
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_13f} :catch_193
    .catch Lorg/json/JSONException; {:try_start_116 .. :try_end_13f} :catch_190
    .catchall {:try_start_116 .. :try_end_13f} :catchall_18e

    if-eqz p1, :cond_144

    .line 287
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_144
    return-object p2

    :cond_145
    :pswitch_145
    :try_start_145
    const-string v2, "Location"

    .line 227
    invoke-virtual {p1, v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpenPdcRequest"

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " redirection to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_145 .. :try_end_169} :catch_196
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_169} :catch_193
    .catch Lorg/json/JSONException; {:try_start_145 .. :try_end_169} :catch_190
    .catchall {:try_start_145 .. :try_end_169} :catchall_18e

    if-eqz p0, :cond_186

    .line 231
    :try_start_16b
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-interface {p0, v1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_17e

    goto :goto_186

    .line 236
    :cond_17e
    new-instance v1, Lcom/xiaomi/opensdk/pdc/h;

    const-string v3, "Redirect Times Exceed 15"

    invoke-direct {v1, v3}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_186
    .catch Ljava/net/URISyntaxException; {:try_start_16b .. :try_end_186} :catch_186
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16b .. :try_end_186} :catch_196
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_186} :catch_193
    .catch Lorg/json/JSONException; {:try_start_16b .. :try_end_186} :catch_190
    .catchall {:try_start_16b .. :try_end_186} :catchall_18e

    :catch_186
    :cond_186
    :goto_186
    if-eqz p1, :cond_18b

    .line 287
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_18b
    move-object p1, v2

    goto/16 :goto_24

    :catchall_18e
    move-exception p0

    goto :goto_1e6

    :catch_190
    move-exception p0

    move-object v1, p1

    goto :goto_19d

    :catch_193
    move-exception p0

    move-object v1, p1

    goto :goto_1ab

    :catch_196
    move-exception p0

    move-object v1, p1

    goto :goto_1d9

    :catchall_199
    move-exception p0

    move-object p1, v1

    goto :goto_1e6

    :catch_19c
    move-exception p0

    :goto_19d
    :try_start_19d
    const-string p1, "OpenPdcRequest"

    const-string p2, "request error"

    .line 283
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1aa
    move-exception p0

    :goto_1ab
    const-string p1, "OpenPdcRequest"

    const-string p2, "request error"

    .line 272
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    invoke-static {p0}, Lcom/xiaomi/opensdk/a/b;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1d2

    .line 274
    new-instance p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;-><init>()V

    .line 275
    iput-boolean p3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->c:Z

    .line 276
    sget-object p1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string p1, "error"

    .line 277
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->h:Ljava/lang/String;

    const-wide/32 p1, 0x493e0

    .line 278
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->f:J
    :try_end_1cc
    .catchall {:try_start_19d .. :try_end_1cc} :catchall_199

    if-eqz v1, :cond_1d1

    .line 287
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1d1
    return-object p0

    .line 281
    :cond_1d2
    :try_start_1d2
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1d8
    move-exception p0

    :goto_1d9
    const-string p1, "OpenPdcRequest"

    const-string p2, "request error"

    .line 269
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1e6
    .catchall {:try_start_1d2 .. :try_end_1e6} :catchall_199

    :goto_1e6
    if-eqz p1, :cond_1eb

    .line 287
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1eb
    throw p0

    :pswitch_data_1ec
    .packed-switch 0x12d
        :pswitch_145
        :pswitch_145
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
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

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "; "

    const/4 v2, 0x0

    .line 351
    invoke-static {p0, v1, v2, v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/net/ssl/HttpsURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v1, 0x7530

    .line 297
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 298
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 299
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    if-eqz p1, :cond_25

    const-string v0, "Cookie"

    .line 301
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-object p0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/StringBuilder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 310
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    .line 312
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-lez v0, :cond_1d

    .line 314
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    if-eqz p2, :cond_2c

    .line 317
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    :cond_2c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_32
    if-eqz p2, :cond_41

    .line 318
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    :cond_41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    :goto_47
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 320
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_52
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_52} :catch_55

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catch_55
    const-string v1, "OpenPdcRequest"

    const-string v2, "Cannot encode map values!"

    .line 324
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_5d
    return-void
.end method

.method private static b(II)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    sparse-switch p0, :sswitch_data_5e

    .line 159
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 156
    :sswitch_6
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 154
    :sswitch_9
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :sswitch_c
    packed-switch p1, :pswitch_data_78

    .line 149
    :pswitch_f
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 146
    :pswitch_12
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 143
    :pswitch_15
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 140
    :pswitch_18
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 137
    :pswitch_1b
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 134
    :pswitch_1e
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 131
    :pswitch_21
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 128
    :pswitch_24
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 125
    :pswitch_27
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 122
    :pswitch_2a
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 119
    :pswitch_2d
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 116
    :pswitch_30
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :sswitch_33
    packed-switch p1, :pswitch_data_96

    packed-switch p1, :pswitch_data_a4

    .line 108
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 105
    :pswitch_3c
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 102
    :pswitch_3f
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 99
    :pswitch_42
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 96
    :pswitch_45
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 93
    :pswitch_48
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 90
    :pswitch_4b
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 87
    :pswitch_4e
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 84
    :pswitch_51
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 81
    :pswitch_54
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 78
    :pswitch_57
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 72
    :sswitch_5a
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    nop

    :sswitch_data_5e
    .sparse-switch
        0xc8 -> :sswitch_5a
        0x190 -> :sswitch_33
        0x191 -> :sswitch_c
        0x193 -> :sswitch_c
        0x1f4 -> :sswitch_9
        0x1f5 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x17701
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_f
        :pswitch_21
        :pswitch_1e
        :pswitch_f
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x2af8
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x36b1
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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

    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 334
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    .line 338
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    .line 339
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "?"

    .line 340
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_20
    const-string p0, "&"

    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25
    const-string p0, "&"

    const/4 v1, 0x1

    .line 345
    invoke-static {p1, p0, v1, v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :cond_30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "origin is not allowed null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
