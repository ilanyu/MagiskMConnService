.class public Lcn/kuaipan/android/http/a/c;
.super Lcn/kuaipan/android/http/a/e;
.source "SourceFile"


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljavax/crypto/Cipher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcn/kuaipan/android/http/a/e;-><init>(Ljava/io/File;)V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcn/kuaipan/android/http/a/c;->b:J

    .line 18
    iput-object p2, p0, Lcn/kuaipan/android/http/a/c;->a:Ljavax/crypto/Cipher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljavax/crypto/Cipher;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/http/a/e;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const-wide/16 p1, -0x1

    .line 14
    iput-wide p1, p0, Lcn/kuaipan/android/http/a/c;->b:J

    .line 24
    iput-object p3, p0, Lcn/kuaipan/android/http/a/c;->a:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    .line 39
    iget-wide v0, p0, Lcn/kuaipan/android/http/a/c;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/16 v0, 0x400

    .line 40
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 44
    :try_start_e
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/c;->c()Ljava/io/InputStream;

    move-result-object v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_28
    .catchall {:try_start_e .. :try_end_12} :catchall_26

    .line 46
    :goto_12
    :try_start_12
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1a

    add-int/2addr v1, v2

    goto :goto_12

    :cond_1a
    int-to-long v0, v1

    .line 49
    iput-wide v0, p0, Lcn/kuaipan/android/http/a/c;->b:J
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_24
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 54
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_34

    goto :goto_34

    :catchall_21
    move-exception v0

    move-object v2, v3

    goto :goto_30

    :catch_24
    move-object v2, v3

    goto :goto_28

    :catchall_26
    move-exception v0

    goto :goto_30

    :catch_28
    :goto_28
    const-wide/16 v0, 0x0

    .line 51
    :try_start_2a
    iput-wide v0, p0, Lcn/kuaipan/android/http/a/c;->b:J
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_26

    .line 54
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_34

    goto :goto_34

    :goto_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_33

    .line 57
    :catch_33
    throw v0

    .line 60
    :catch_34
    :cond_34
    :goto_34
    iget-wide v0, p0, Lcn/kuaipan/android/http/a/c;->b:J

    return-wide v0
.end method

.method public c()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-super {p0}, Lcn/kuaipan/android/http/a/e;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcn/kuaipan/android/http/a/c;->a:Ljavax/crypto/Cipher;

    if-nez v1, :cond_13

    .line 31
    new-instance v1, Ljavax/crypto/CipherInputStream;

    new-instance v2, Ljavax/crypto/NullCipher;

    invoke-direct {v2}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {v1, v0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1

    .line 33
    :cond_13
    new-instance v1, Ljavax/crypto/CipherInputStream;

    iget-object v2, p0, Lcn/kuaipan/android/http/a/c;->a:Ljavax/crypto/Cipher;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method
