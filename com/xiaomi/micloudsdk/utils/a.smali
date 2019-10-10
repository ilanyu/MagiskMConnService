.class public Lcom/xiaomi/micloudsdk/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/micloudsdk/utils/f;


# static fields
.field public static final a:Ljava/lang/String; = "AESCoder"

.field public static final b:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final c:Ljava/lang/String; = "UTF-8"


# instance fields
.field private d:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_9

    :cond_4
    const/4 v0, 0x2

    .line 31
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    :goto_9
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/utils/a;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1b

    .line 24
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_11

    const-string v0, "AESCoder"

    const-string v1, "aesKey is invalid"

    .line 25
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_11
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/a;->d:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    .line 21
    :cond_1b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "aes key is null"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/a;
        }
    .end annotation

    if-nez p1, :cond_b

    const-string p1, "AESCoder"

    const-string v0, "decrypt failed for empty data"

    .line 41
    invoke-static {p1, v0}, Lcom/xiaomi/micloudsdk/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_b
    const/4 v0, 0x2

    .line 45
    :try_start_c
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/utils/a;->a([B)[B

    move-result-object p1

    .line 47
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception p1

    .line 51
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    const-string v1, "fail to decrypt by aescoder"

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected a()[B
    .registers 2

    const-string v0, "0102030405060708"

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public a([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/a;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 59
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 60
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/a;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    .line 61
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/utils/a;->d:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p1, :cond_1c

    .line 65
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    .line 63
    :cond_1c
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    const-string v0, "no block data"

    invoke-direct {p1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    move-exception p1

    .line 70
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    const-string v1, "fail to decrypt by aescoder"

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/a;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/utils/a;->b([B)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 86
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p1

    .line 90
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    const-string v1, "fail to encrypt by aescoder"

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/a;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 99
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 100
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/a;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    .line 101
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/utils/a;->d:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 102
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 106
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    const-string v1, "fail to encrypt by aescoder"

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
