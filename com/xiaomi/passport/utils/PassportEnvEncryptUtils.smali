.class public Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;,
        Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AES"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;-><init>()V

    .line 34
    invoke-static {}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->a()Ljavax/crypto/SecretKey;

    move-result-object v1

    :try_start_9
    const-string v2, "-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWBw0IzANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNjExMDQwNzA5MjNaFw0xNzExMDQwNzA5MjNa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCHcPEm9Wo8/LWHL8mohOV5YalTgZLzng+nWCEkIRP//6GohYlI\nh3dvGpueJvQ3Sany/3dLx0x6MQKA34NxRyoO37R/LgPZUfe6eWzHQeColBBHxTED\nbCqDh46Gv5vogjqHRl4+q2WGCmZOIfmPjNHQWG8sMIZyTqFCLc6gk9vSewIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAHaPnscaxSPh0N0Z5OgQ6PcWr5uYPLMweatYGZRH\nSFxwSqYXpqIowuRxmrBj+oE5rG5rzFCtNjCBoeMVy/7JXZr9Juaw9NCWaTaqrmIV\nP4nK/0kizCvkx3088OOCGextGeZUC9/PCbVUEcRvGLwSrvgqiC1KG4ufeIdQWBaJ\n8ZlG\n-----END CERTIFICATE-----\n"

    .line 37
    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/v;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 38
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    .line 39
    invoke-static {v3, v2}, Lcom/xiaomi/accountsdk/utils/v;->a([BLjava/security/Key;)[B

    move-result-object v2

    .line 40
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_21
    .catch Lcom/xiaomi/accountsdk/account/a/b; {:try_start_9 .. :try_end_21} :catch_2a

    .line 44
    invoke-static {p0, v1}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->a(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;->a:Ljava/lang/String;

    .line 45
    iput-object v2, v0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;->b:Ljava/lang/String;

    return-object v0

    :catch_2a
    move-exception p0

    .line 42
    new-instance v0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a([Ljava/lang/String;)Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    const-string v0, ":"

    .line 28
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->a(Ljava/lang/String;)Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/xiaomi/accountsdk/utils/a;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/utils/a;-><init>([B)V

    .line 63
    :try_start_9
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Lcom/xiaomi/accountsdk/request/d; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 65
    new-instance p1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {p1, p0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a()Ljavax/crypto/SecretKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES"

    .line 51
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 53
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 54
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    .line 56
    new-instance v1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
