.class public Lcom/xiaomi/micloudsdk/request/utils/a;
.super Lcom/xiaomi/micloudsdk/utils/b;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "CloudAESWithIVCoder"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/utils/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a([B[B)[B
    .registers 4

    .line 67
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_7
    const-string p1, "HmacSHA1"

    .line 69
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 71
    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 72
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0
    :try_end_17
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_17} :catch_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    const-string p1, "CloudAESWithIVCoder"

    const-string v0, "encryptHMACSha1 error"

    .line 76
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :catch_21
    move-exception p0

    const-string p1, "CloudAESWithIVCoder"

    const-string v0, "encryptHMACSha1 error"

    .line 74
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/a;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/request/utils/a;->a()V

    .line 30
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "D"

    .line 32
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S"

    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7a

    const/4 v1, 0x0

    .line 38
    aget-object v3, v0, v1

    const/4 v4, 0x1

    .line 39
    aget-object v0, v0, v4

    const-string v5, "%s:%s"

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/request/utils/a;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/micloudsdk/request/utils/a;->a([B[B)[B

    move-result-object v1

    const/16 v2, 0xb

    .line 41
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 49
    invoke-super {p0, p1}, Lcom/xiaomi/micloudsdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_56
    new-instance p1, Lcom/xiaomi/micloudsdk/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server hash "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and local hash "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dismatch"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_7a
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "not 2 columns in security info"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_82} :catch_b2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_82} :catch_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_82} :catch_92
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_82} :catch_82

    :catch_82
    move-exception p1

    const-string v0, "CloudAESWithIVCoder"

    const-string v1, "decrypt error"

    .line 60
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    const-string v1, "decrypt error"

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_92
    move-exception p1

    const-string v0, "CloudAESWithIVCoder"

    const-string v1, "decrypt error"

    .line 57
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    const-string v1, "decrypt error"

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_a2
    move-exception p1

    const-string v0, "CloudAESWithIVCoder"

    const-string v1, "decrypt error"

    .line 54
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    const-string v1, "decrypt error"

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_b2
    move-exception p1

    const-string v0, "CloudAESWithIVCoder"

    const-string v1, "decrypt error"

    .line 51
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    const-string v1, "decrypt error"

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
