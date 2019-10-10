.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/b;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/f;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "bytes=%d-"

.field private static final n:Ljava/lang/String; = "RANGE"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 46
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 51
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->b:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->j:Ljava/lang/String;

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->k:I

    .line 55
    iput-boolean p4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->l:Z

    return-void

    .line 48
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The download requset parameters should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lorg/apache/commons/codec/DecoderException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;Z)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/g;,
            Lorg/apache/commons/codec/DecoderException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p4, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13b

    if-eqz p5, :cond_17

    .line 89
    :try_start_c
    iget-object p5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, p5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object p5
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p2

    move-object p5, v0

    goto/16 :goto_13e

    :cond_17
    move-object p5, v0

    :goto_18
    const/4 v3, 0x1

    if-eqz p5, :cond_36

    :try_start_1b
    const-string v4, "RANGE"

    const-string v5, "bytes=%d-"

    .line 92
    new-array v6, v3, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :catchall_33
    move-exception p2

    goto/16 :goto_13e

    .line 95
    :cond_36
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object p5, v4

    .line 99
    :goto_3c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 102
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    const/4 v6, 0x2

    if-eq v4, v5, :cond_80

    .line 104
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_53

    const/16 v5, 0xce

    if-ne v4, v5, :cond_53

    goto :goto_80

    .line 136
    :cond_53
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/c/d;->a(I)Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 137
    new-instance p2, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {p2, v4, v1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/net/HttpURLConnection;)V

    throw p2

    :cond_5f
    const-string p2, "download:The responsed message is %s, code is %d"

    .line 139
    new-array p3, v6, [Ljava/lang/Object;

    .line 141
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v3

    .line 139
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 142
    new-instance p2, Lcom/xiaomi/micloudsdk/c/g;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/xiaomi/micloudsdk/c/g;-><init>(Ljava/lang/String;)V

    throw p2

    .line 106
    :cond_80
    :goto_80
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->b:Ljava/lang/String;

    if-eqz v4, :cond_9c

    .line 107
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->b:Ljava/lang/String;

    .line 108
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v7

    .line 107
    invoke-static {v7, v6}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b([BI)Ljavax/crypto/Cipher;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    goto :goto_a0

    .line 110
    :cond_9c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_a0
    move-object v0, v4

    const/16 v4, 0x400

    .line 113
    new-array v4, v4, [B

    .line 115
    :goto_a5
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b0

    .line 116
    invoke-virtual {p5, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a5

    .line 119
    :cond_b0
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 120
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 122
    iget-boolean v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->l:Z

    if-eqz v5, :cond_116

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->c([B)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->j:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c8

    goto :goto_116

    .line 125
    :cond_c8
    iget v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->k:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_10e

    .line 126
    iget v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->k:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->k:I

    const-string v4, "download:Retry %s time to download file because of mismatch sha1"

    .line 127
    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->k:I

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 127
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)[B

    move-result-object p2
    :try_end_e9
    .catchall {:try_start_1b .. :try_end_e9} :catchall_33

    if-eqz v0, :cond_f3

    .line 148
    :try_start_eb
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef

    goto :goto_f3

    :catch_ef
    move-exception p3

    .line 150
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_f3
    :goto_f3
    if-eqz p5, :cond_108

    .line 157
    :try_start_f5
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    if-lez p3, :cond_100

    .line 158
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, p5, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 160
    :cond_100
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_103} :catch_104

    goto :goto_108

    :catch_104
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_108
    :goto_108
    if-eqz v1, :cond_10d

    .line 167
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10d
    return-object p2

    .line 132
    :cond_10e
    :try_start_10e
    new-instance p2, Lcom/xiaomi/micloudsdk/c/g;

    const-string p3, "The download data sha1 is not consistant with server sha1"

    invoke-direct {p2, p3}, Lcom/xiaomi/micloudsdk/c/g;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_116
    .catchall {:try_start_10e .. :try_end_116} :catchall_33

    :cond_116
    :goto_116
    if-eqz v0, :cond_120

    .line 148
    :try_start_118
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11c

    goto :goto_120

    :catch_11c
    move-exception p2

    .line 150
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_120
    :goto_120
    if-eqz p5, :cond_135

    .line 157
    :try_start_122
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    if-lez p2, :cond_12d

    .line 158
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, p5, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 160
    :cond_12d
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_130} :catch_131

    goto :goto_135

    :catch_131
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_135
    :goto_135
    if-eqz v1, :cond_13a

    .line 167
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13a
    return-object v4

    :catchall_13b
    move-exception p2

    move-object p5, v0

    move-object v1, p5

    :goto_13e
    if-eqz v0, :cond_148

    .line 148
    :try_start_140
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_144

    goto :goto_148

    :catch_144
    move-exception p3

    .line 150
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_148
    :goto_148
    if-eqz p5, :cond_15d

    .line 157
    :try_start_14a
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    if-lez p3, :cond_155

    .line 158
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, p5, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/b;->a(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 160
    :cond_155
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_158} :catch_159

    goto :goto_15d

    :catch_159
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_15d
    :goto_15d
    if-eqz v1, :cond_162

    .line 167
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_162
    throw p2
.end method

.method public bridge synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/f;
    .registers 3

    .line 32
    invoke-super {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/f;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "GET"

    return-object v0
.end method
