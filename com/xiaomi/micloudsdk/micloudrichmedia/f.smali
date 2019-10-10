.class abstract Lcom/xiaomi/micloudsdk/micloudrichmedia/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MiCloudSDKRequest"

.field public static final c:I = 0x7530

.field public static final d:I = 0x1388

.field public static final e:I = 0x5000

.field public static final f:I = 0xc800

.field public static final g:I = 0x19000

.field protected static final h:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/file/v2/user/full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->i:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .registers 9

    .line 259
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_9f

    const-string p1, "getTemporaryDownloadData:The temporary downloaded file %s exist"

    const/4 v1, 0x1

    .line 263
    new-array v1, v1, [Ljava/lang/Object;

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 263
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 267
    :try_start_37
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3c} :catch_7b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_6c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_67

    .line 268
    :try_start_3c
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_41} :catch_62
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_5d
    .catchall {:try_start_3c .. :try_end_41} :catchall_90

    const/16 p2, 0x400

    .line 269
    :try_start_43
    new-array p2, p2, [B

    .line 271
    :goto_45
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_50

    .line 272
    invoke-virtual {v1, p2, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_45

    .line 274
    :cond_50
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_53} :catch_5b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_53} :catch_59
    .catchall {:try_start_43 .. :try_end_53} :catchall_90

    .line 282
    :try_start_53
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_8c

    :catch_57
    move-exception p1

    goto :goto_89

    :catch_59
    move-exception p2

    goto :goto_70

    :catch_5b
    move-exception p2

    goto :goto_7f

    :catch_5d
    move-exception v1

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_70

    :catch_62
    move-exception v1

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_7f

    :catchall_67
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_91

    :catch_6c
    move-exception p1

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    .line 278
    :goto_70
    :try_start_70
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_90

    if-eqz p1, :cond_8c

    .line 282
    :try_start_75
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_8c

    :catch_79
    move-exception p1

    goto :goto_89

    :catch_7b
    move-exception p1

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    .line 276
    :goto_7f
    :try_start_7f
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_90

    if-eqz p1, :cond_8c

    .line 282
    :try_start_84
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception p1

    .line 284
    :goto_89
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 288
    :cond_8c
    :goto_8c
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_a0

    :catchall_90
    move-exception p2

    :goto_91
    if-eqz p1, :cond_9b

    .line 282
    :try_start_93
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9b

    :catch_97
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 288
    :cond_9b
    :goto_9b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p2

    :cond_9f
    move-object v1, p2

    :goto_a0
    return-object v1
.end method

.method protected a()Ljava/lang/String;
    .registers 3

    .line 104
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->h:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 106
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->i:Ljava/lang/String;

    :cond_c
    return-object v0
.end method

.method protected a(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/4 v0, 0x1

    if-lez p4, :cond_39

    .line 207
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 208
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/net/HttpURLConnection;)V

    .line 209
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_12

    goto :goto_39

    .line 212
    :cond_12
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/c/d;->a(I)Z

    move-result p2

    if-nez p2, :cond_33

    const-string p2, "The responsed message is %s, code is %d"

    const/4 p3, 0x2

    .line 215
    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 216
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    .line 215
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 213
    :cond_33
    new-instance p2, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {p2, v1, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/net/HttpURLConnection;)V

    throw p2

    .line 222
    :cond_39
    :goto_39
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    :goto_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 228
    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a7

    .line 234
    :try_start_60
    iget-object v2, p2, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v1, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_68} :catch_83

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 240
    invoke-static {v2, p4}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    add-int/2addr p4, v0

    .line 243
    invoke-virtual {p0, p1, p3, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_82
    return-object v2

    :catch_83
    move-exception p2

    .line 236
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IllegalArgumentException Response:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " url:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Request"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    throw p2

    .line 230
    :cond_a7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "empty response is invalid."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 68
    :cond_8
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 69
    invoke-static {p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 72
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The connection url is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 76
    :try_start_27
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_32
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_32} :catch_89
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_79

    const/16 v0, 0x7530

    .line 78
    :try_start_34
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "Cookie"

    .line 82
    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    const-string p2, "User-Agent"

    .line 84
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_6d

    const-string p2, "X-XIAOMI-REDIRECT-COUNT"

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    const-string p2, "X-XIAOMI-SUPPORT-REDIRECT"

    const-string p3, "true"

    .line 88
    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_34 .. :try_end_74} :catch_77
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_74} :catch_75

    goto :goto_8e

    :catch_75
    move-exception p2

    goto :goto_7b

    :catch_77
    move-exception p2

    goto :goto_8b

    :catch_79
    move-exception p2

    move-object p1, v1

    :goto_7b
    const-string p3, "MiCloudSDKRequest"

    .line 92
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaomi/micloudsdk/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :catch_89
    move-exception p2

    move-object p1, v1

    .line 90
    :goto_8b
    invoke-virtual {p2}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_8e
    return-object p1
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
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

    .line 123
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 128
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 130
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {p1, v2, v5}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 135
    :cond_44
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 137
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 139
    :cond_65
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "signature"

    .line 141
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-static {v4, p2, v1, p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 155
    :try_start_3
    iget-object v2, p2, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 158
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 159
    invoke-static {p1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p0, v2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0, p1, p3, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_af
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1c} :catch_a4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_1c} :catch_9c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_1c} :catch_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_1c} :catch_70
    .catchall {:try_start_3 .. :try_end_1c} :catchall_6d

    .line 162
    :try_start_1c
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 165
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3a

    .line 168
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2b} :catch_6b
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_2b} :catch_69
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1c .. :try_end_2b} :catch_67
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1c .. :try_end_2b} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2b} :catch_62
    .catchall {:try_start_1c .. :try_end_2b} :catchall_d3

    .line 169
    :try_start_2b
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_6b
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_30} :catch_69
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2b .. :try_end_30} :catch_67
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2b .. :try_end_30} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_30} :catch_36
    .catchall {:try_start_2b .. :try_end_30} :catchall_d3

    if-eqz p1, :cond_35

    .line 197
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_35
    return-object p3

    :catch_36
    move-exception p3

    move-object v1, p1

    move-object v0, p2

    goto :goto_71

    .line 170
    :cond_3a
    :try_start_3a
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/c/d;->a(I)Z

    move-result p2

    if-nez p2, :cond_5c

    const-string p2, "The responsed message is %s, code is %d"

    const/4 p3, 0x2

    .line 173
    new-array p3, p3, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v2

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v2

    .line 173
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_d2

    goto :goto_ab

    .line 171
    :cond_5c
    new-instance p2, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {p2, v3, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/net/HttpURLConnection;)V

    throw p2
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_62} :catch_6b
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_62} :catch_69
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3a .. :try_end_62} :catch_67
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3a .. :try_end_62} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_62} :catch_62
    .catchall {:try_start_3a .. :try_end_62} :catchall_d3

    :catch_62
    move-exception p3

    move-object v1, p1

    goto :goto_71

    :catch_65
    move-exception p2

    goto :goto_96

    :catch_67
    move-exception p2

    goto :goto_9e

    :catch_69
    move-exception p2

    goto :goto_a6

    :catch_6b
    move-exception p2

    goto :goto_b1

    :catchall_6d
    move-exception p2

    move-object p1, v1

    goto :goto_d4

    :catch_70
    move-exception p3

    :goto_71
    :try_start_71
    const-string p1, "Request"

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad base 64 exception: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    throw p3
    :try_end_94
    .catchall {:try_start_71 .. :try_end_94} :catchall_6d

    :catch_94
    move-exception p2

    move-object p1, v1

    .line 183
    :goto_96
    :try_start_96
    invoke-virtual {p2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    if-eqz p1, :cond_d2

    goto :goto_ab

    :catch_9c
    move-exception p2

    move-object p1, v1

    .line 181
    :goto_9e
    invoke-virtual {p2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    if-eqz p1, :cond_d2

    goto :goto_ab

    :catch_a4
    move-exception p2

    move-object p1, v1

    .line 179
    :goto_a6
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_96 .. :try_end_a9} :catchall_d3

    if-eqz p1, :cond_d2

    .line 197
    :goto_ab
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_d2

    :catch_af
    move-exception p2

    move-object p1, v1

    :goto_b1
    :try_start_b1
    const-string p3, "MiCloudSDKRequest"

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to request http for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaomi/micloudsdk/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_b1 .. :try_end_cf} :catchall_d3

    if-eqz p1, :cond_d2

    goto :goto_ab

    :cond_d2
    :goto_d2
    return-object v1

    :catchall_d3
    move-exception p2

    :goto_d4
    if-eqz p1, :cond_d9

    .line 197
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d9
    throw p2
.end method

.method protected a(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Save temporary downloaded data to file %s"

    const/4 v2, 0x1

    .line 300
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_2d} :catch_50
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2d} :catch_46
    .catchall {:try_start_1 .. :try_end_2d} :catchall_44

    .line 303
    :try_start_2d
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 304
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_37} :catch_41
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_3e
    .catchall {:try_start_2d .. :try_end_37} :catchall_3b

    .line 312
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_5a

    goto :goto_5e

    :catchall_3b
    move-exception p1

    move-object v0, v1

    goto :goto_5f

    :catch_3e
    move-exception p1

    move-object v0, v1

    goto :goto_47

    :catch_41
    move-exception p1

    move-object v0, v1

    goto :goto_51

    :catchall_44
    move-exception p1

    goto :goto_5f

    :catch_46
    move-exception p1

    .line 308
    :goto_47
    :try_start_47
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    if-eqz v0, :cond_5e

    .line 312
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5a

    goto :goto_5e

    :catch_50
    move-exception p1

    .line 306
    :goto_51
    :try_start_51
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_44

    if-eqz v0, :cond_5e

    .line 312
    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p1

    .line 314
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5e
    :goto_5e
    return-void

    :goto_5f
    if-eqz v0, :cond_69

    .line 312
    :try_start_61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p2

    .line 314
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 315
    :cond_69
    :goto_69
    throw p1
.end method

.method protected a(Ljava/net/HttpURLConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/f;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 100
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_16

    :cond_7
    const-string v0, "%s?%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_16
    return-object p1
.end method
