.class public Lcom/xiaomi/accountsdk/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWBw0IzANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNjExMDQwNzA5MjNaFw0xNzExMDQwNzA5MjNa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCHcPEm9Wo8/LWHL8mohOV5YalTgZLzng+nWCEkIRP//6GohYlI\nh3dvGpueJvQ3Sany/3dLx0x6MQKA34NxRyoO37R/LgPZUfe6eWzHQeColBBHxTED\nbCqDh46Gv5vogjqHRl4+q2WGCmZOIfmPjNHQWG8sMIZyTqFCLc6gk9vSewIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAHaPnscaxSPh0N0Z5OgQ6PcWr5uYPLMweatYGZRH\nSFxwSqYXpqIowuRxmrBj+oE5rG5rzFCtNjCBoeMVy/7JXZr9Juaw9NCWaTaqrmIV\nP4nK/0kizCvkx3088OOCGextGeZUC9/PCbVUEcRvGLwSrvgqiC1KG4ufeIdQWBaJ\n8ZlG\n-----END CERTIFICATE-----\n"

.field public static final b:I = 0xa

.field private static final c:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p1, :cond_17

    const/16 v0, 0xa

    .line 131
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/v;->a([BLjava/security/Key;)[B

    move-result-object p0

    .line 132
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "encrypt key should not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "plain data should not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(I)Ljava/security/KeyPair;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    :try_start_0
    const-string v0, "RSA"

    .line 52
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 54
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 55
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 57
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "generate key"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    :try_start_6
    const-string v0, "UTF-8"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/v;->a([B)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 68
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "getPublicKey"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "public key should not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([B)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    if-eqz p0, :cond_25

    :try_start_2
    const-string v0, "X.509"

    .line 77
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 81
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "getPublicKey"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 74
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "public key bytes should not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BLjava/security/Key;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    const/4 v0, 0x1

    .line 137
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/accountsdk/utils/v;->a([BLjava/security/Key;I)[B

    move-result-object p0
    :try_end_5
    .catch Lcom/xiaomi/accountsdk/account/a/b; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 139
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/a/b;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "encrypt"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a([BLjava/security/Key;I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 171
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 173
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_d} :catch_3a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_d} :catch_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_24
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_d} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 183
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_19
    move-exception p0

    .line 181
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_24
    move-exception p0

    .line 179
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2f
    move-exception p0

    .line 177
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3a
    move-exception p0

    .line 175
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p1, :cond_17

    const/16 v0, 0xa

    .line 157
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/v;->b([BLjava/security/Key;)[B

    move-result-object p0

    .line 158
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "decrypt key should not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "en data should not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([B)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    if-eqz p0, :cond_2c

    .line 90
    :try_start_2
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    .line 91
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 92
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_11} :catch_1f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 97
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "getPublicKey"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1f
    move-exception p0

    .line 95
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "getPublicKey"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 87
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "public key bytes should not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BLjava/security/Key;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    const/4 v0, 0x2

    .line 163
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/accountsdk/utils/v;->a([BLjava/security/Key;I)[B

    move-result-object p0
    :try_end_5
    .catch Lcom/xiaomi/accountsdk/account/a/b; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 165
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/a/b;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "decrypt"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static c([B)Ljava/security/PrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/b;
        }
    .end annotation

    if-eqz p0, :cond_2c

    .line 106
    :try_start_2
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    .line 107
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 108
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_11
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_11} :catch_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 112
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "getPrivateKey"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1f
    move-exception p0

    .line 110
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/b;

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "getPrivateKey"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 103
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "private key bytes should not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
