.class public Lcom/xiaomi/accountsdk/utils/CloudCoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "UTF-8"

.field public static final b:I = 0xb

.field private static final c:Ljava/lang/String; = "RC4"

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/getSecurityToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/CloudCoder;->d:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/getPlanText"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/CloudCoder;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/CloudCoder;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 239
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    .line 240
    new-array v1, v1, [B

    .line 241
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 242
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 2

    .line 450
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/s;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 161
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

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

    .line 293
    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x0

    .line 294
    invoke-static {p0, p1, v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 276
    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 277
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    sget-object v1, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->a:Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    if-ne p5, v1, :cond_17

    .line 207
    sget-object v1, Lcom/xiaomi/accountsdk/utils/CloudCoder;->d:Ljava/lang/String;

    const-string v2, "plainText"

    .line 208
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 210
    :cond_17
    sget-object v1, Lcom/xiaomi/accountsdk/utils/CloudCoder;->e:Ljava/lang/String;

    const-string v2, "token"

    .line 211
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    const-string p2, "userId"

    .line 213
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p2, "cUserId"

    .line 215
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "serviceToken"

    .line 216
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 218
    invoke-static {v1, v0, p0, p1, p4}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    const-string p1, "code"

    .line 219
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 220
    sget-object p2, Lcom/xiaomi/accountsdk/utils/CloudCoder;->f:Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_84

    const-string p1, "data"

    .line 224
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 225
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_7c

    .line 228
    check-cast p0, Ljava/util/Map;

    .line 229
    sget-object p1, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->a:Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    if-ne p5, p1, :cond_58

    const-string p1, "cipher"

    goto :goto_5a

    :cond_58
    const-string p1, "plainText"

    .line 230
    :goto_5a
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 231
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_65

    .line 234
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 232
    :cond_65
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_7c
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "invalid data node"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_84
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to encrypt, code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_9b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is not only digits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 177
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/accountsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

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

    .line 454
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 457
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

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

    .line 461
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 464
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_31

    aget-object v4, p1, v3

    .line 466
    invoke-static {v4}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    goto :goto_2e

    :cond_1a
    if-lez p2, :cond_2b

    .line 469
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le p2, v5, :cond_23

    goto :goto_2b

    .line 473
    :cond_23
    invoke-virtual {v4, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 471
    :cond_2b
    :goto_2b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_31
    if-nez p0, :cond_35

    const-string p0, ""

    .line 479
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

    .line 304
    :cond_4
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_17

    .line 308
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :catch_17
    move-exception p0

    .line 306
    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a([B)Ljava/lang/String;
    .registers 8

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const-string v5, "%02X"

    const/4 v6, 0x1

    .line 248
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 250
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .registers 3

    const-string v0, "0102030405060708"

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;
    .registers 5

    const/4 v0, 0x2

    .line 68
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 70
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_c
    const-string p0, "AES/CBC/PKCS5Padding"

    .line 72
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 73
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 75
    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1a} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_1a} :catch_25
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_1a} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_2e

    :catch_20
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_2e

    :catch_25
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BI)Ljavax/crypto/Cipher;
    .registers 4

    .line 98
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_7
    const-string p0, "AES"

    .line 100
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 101
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_10} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_10} :catch_16
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1f

    :catch_16
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 110
    :goto_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to init AES cipher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 376
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->e(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b([BI)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 378
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 379
    array-length p1, p1

    array-length v0, p0

    if-ne p1, v0, :cond_12

    return-object p0

    .line 380
    :cond_12
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The encoded data length is not the same with original data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p0

    .line 385
    throw p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 446
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/s;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x8

    .line 254
    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/a;->a(Ljava/lang/String;I)Ljava/lang/String;

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

    .line 343
    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x0

    .line 344
    invoke-static {p0, p1, v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 323
    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, ""

    return-object p0

    .line 327
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 351
    sget-object p2, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a:Ljava/lang/String;

    .line 352
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 351
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 1

    .line 357
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    .line 124
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_17

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 134
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a([BI)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0

    .line 130
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to init MD5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BI)Ljavax/crypto/Cipher;
    .registers 4

    .line 139
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "RC4"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_7
    const-string p0, "RC4"

    .line 141
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 142
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_10} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_10} :catch_16
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1f

    :catch_16
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 145
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

    .line 396
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_3f
    .catchall {:try_start_1 .. :try_end_7} :catchall_3c

    .line 397
    :try_start_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_39
    .catchall {:try_start_7 .. :try_end_11} :catchall_37

    const/16 v2, 0x1000

    .line 399
    :try_start_13
    new-array v2, v2, [B

    .line 401
    :goto_15
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    const/4 v4, 0x0

    .line 402
    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_35
    .catchall {:try_start_13 .. :try_end_20} :catchall_50

    goto :goto_15

    .line 410
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_29
    if-eqz v1, :cond_34

    .line 416
    :goto_2b
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b([B)Ljava/lang/String;

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

    .line 405
    :goto_42
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_50

    if-eqz p0, :cond_4f

    .line 410
    :try_start_47
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4f
    :goto_4f
    return-object v0

    :catchall_50
    :goto_50
    if-eqz p0, :cond_5a

    .line 410
    :try_start_52
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p0

    .line 412
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

    .line 258
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 423
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_1e

    :cond_7
    :try_start_7
    const-string v1, "SHA1"

    .line 428
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 429
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 430
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 432
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 442
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Ljava/lang/String;
    .registers 1

    .line 438
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    .line 362
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 364
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 366
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
