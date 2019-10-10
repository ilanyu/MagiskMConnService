.class public Lcom/xiaomi/micloudsdk/utils/CloudCoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/CloudCoder$CIPHER_MODE;
    }
.end annotation


# static fields
.field public static final a:I = 0xb

.field private static final b:Ljava/lang/String; = "RC4"

.field private static c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 168
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    .line 169
    new-array v1, v1, [B

    .line 170
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 171
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 147
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 222
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x0

    .line 223
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 205
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 206
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1a

    .line 389
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 392
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_3a

    .line 396
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 399
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_31

    aget-object v4, p1, v3

    .line 401
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    goto :goto_2e

    :cond_1a
    if-lez p2, :cond_2b

    .line 404
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le p2, v5, :cond_23

    goto :goto_2b

    .line 408
    :cond_23
    invoke-virtual {v4, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 406
    :cond_2b
    :goto_2b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_31
    if-nez p0, :cond_35

    const-string p0, ""

    .line 414
    :cond_35
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_4

    const-string p2, "UTF-8"

    .line 233
    :cond_4
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_17

    .line 237
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :catch_17
    move-exception p0

    .line 235
    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a([B)Ljava/lang/String;
    .registers 8

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const-string v5, "%02X"

    const/4 v6, 0x1

    .line 177
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 179
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .registers 3

    const-string v0, "0102030405060708"

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;
    .registers 5

    const/4 v0, 0x2

    .line 54
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 56
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_c
    const-string p0, "AES/CBC/PKCS5Padding"

    .line 58
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 59
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 61
    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1a} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_1a} :catch_25
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_1a} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_2e

    :catch_20
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_2e

    :catch_25
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BI)Ljavax/crypto/Cipher;
    .registers 4

    .line 84
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_7
    const-string p0, "AES"

    .line 86
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_10} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_10} :catch_16
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1f

    :catch_16
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 96
    :goto_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to init AES cipher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(J)V
    .registers 2

    .line 376
    sput-wide p0, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->c:J

    return-void
.end method

.method public static a(Ljava/lang/String;[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->e(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b([BI)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 307
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 308
    array-length p1, p1

    array-length v0, p0

    if-ne p1, v0, :cond_12

    return-object p0

    .line 309
    :cond_12
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The encoded data length is not the same with original data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p0

    .line 314
    throw p0
.end method

.method public static b()Ljava/lang/String;
    .registers 4

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->c:J

    add-long/2addr v0, v2

    .line 381
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)Ljava/lang/String;
    .registers 2

    .line 385
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/e;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x8

    .line 183
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 272
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x0

    .line 273
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 252
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, ""

    return-object p0

    .line 256
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_4

    const-string p2, "UTF-8"

    .line 281
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 1

    .line 286
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/e;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    .line 110
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_17

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 120
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a([BI)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0

    .line 116
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to init MD5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BI)Ljavax/crypto/Cipher;
    .registers 4

    .line 125
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "RC4"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_7
    const-string p0, "RC4"

    .line 127
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 128
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_10} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_10} :catch_16
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1f

    :catch_16
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SHA1"

    .line 325
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_3f
    .catchall {:try_start_1 .. :try_end_7} :catchall_3c

    .line 326
    :try_start_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_39
    .catchall {:try_start_7 .. :try_end_11} :catchall_37

    const/16 v2, 0x1000

    .line 328
    :try_start_13
    new-array v2, v2, [B

    .line 330
    :goto_15
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    const/4 v4, 0x0

    .line 331
    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_35
    .catchall {:try_start_13 .. :try_end_20} :catchall_50

    goto :goto_15

    .line 339
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p0

    .line 341
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_29
    if-eqz v1, :cond_34

    .line 345
    :goto_2b
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    return-object v0

    :catch_35
    move-exception v2

    goto :goto_42

    :catchall_37
    move-object p0, v0

    goto :goto_50

    :catch_39
    move-exception v2

    move-object p0, v0

    goto :goto_42

    :catchall_3c
    move-object p0, v0

    move-object v1, p0

    goto :goto_50

    :catch_3f
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 334
    :goto_42
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_50

    if-eqz p0, :cond_4f

    .line 339
    :try_start_47
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p0

    .line 341
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4f
    :goto_4f
    return-object v0

    :catchall_50
    :goto_50
    if-eqz p0, :cond_5a

    .line 339
    :try_start_52
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p0

    .line 341
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5a
    :goto_5a
    if-eqz v1, :cond_5d

    goto :goto_2b

    :cond_5d
    return-object v0
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2

    .line 187
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 352
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_1e

    :cond_7
    :try_start_7
    const-string v1, "SHA1"

    .line 357
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 358
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 359
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 361
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 371
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Ljava/lang/String;
    .registers 1

    .line 367
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/e;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    .line 291
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 293
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
