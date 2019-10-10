.class Lcom/xiaomi/micloudsdk/micloudrichmedia/h;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/l;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String; = "UploadChunkRequest"

.field private static final m:I = 0x1400


# instance fields
.field private n:Z

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;ZII)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;ZIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;ZIILjava/lang/String;)V
    .registers 6

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;)V

    .line 50
    iput-boolean p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->n:Z

    .line 51
    iput p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->o:I

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->p:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->q:I

    .line 54
    iput-object p5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 3

    .line 99
    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/upload"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 102
    :cond_22
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->h()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/more"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string p2, "Connection"

    const-string p3, "Keep-Alive"

    .line 113
    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string p3, "multipart/form-data;boundary=*****"

    .line 114
    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-object p1
.end method

.method protected a(Ljava/lang/String;)Ljava/util/List;
    .registers 7
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

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    .line 62
    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 61
    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ckeyhint"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->p:Ljava/lang/String;

    const-string v4, "ASCII"

    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->h()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 67
    :cond_41
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_eb

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 72
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tmpid"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    .line 73
    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ASCII"

    .line 72
    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "_hostingserver"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "offset"

    iget v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->q:I

    .line 76
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 75
    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_95
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->n:Z

    if-eqz v1, :cond_d8

    .line 80
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "st"

    const-string v3, "2"

    const-string v4, "UTF-8"

    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ext"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    .line 84
    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 82
    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "digest"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    .line 88
    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 86
    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    .line 91
    :cond_d8
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "st"

    const-string v3, "1"

    const-string v4, "UTF-8"

    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_ea
    return-object v0

    .line 68
    :cond_eb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The tempid or hosting server should not be null for the non first chunk or mixin2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    :try_start_1
    iget-object v1, p2, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    .line 132
    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_108
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_f2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_23} :catch_df
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_23} :catch_cc
    .catchall {:try_start_1 .. :try_end_23} :catchall_c7

    if-nez p1, :cond_2b

    if-eqz p1, :cond_2a

    .line 187
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2a
    return-object v0

    .line 138
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 140
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_c4
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_37} :catch_c1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2b .. :try_end_37} :catch_be
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2b .. :try_end_37} :catch_bb
    .catchall {:try_start_2b .. :try_end_37} :catchall_b7

    :try_start_37
    const-string v2, "--*****\r\n"

    .line 141
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "Content-Disposition:form-data;name=\"uploadfile0\";filename=\"uploadfile0\"\r\n"

    .line 142
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "\r\n"

    .line 144
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    iget v6, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->o:I

    invoke-virtual {v4, v6}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a(I)[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    const-string v2, "\r\n--*****--\r\n"

    .line 146
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 150
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_7e

    .line 153
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 154
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_70} :catch_b4
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_70} :catch_b2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_37 .. :try_end_70} :catch_b0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_37 .. :try_end_70} :catch_ae
    .catchall {:try_start_37 .. :try_end_70} :catchall_126

    .line 172
    :try_start_70
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p2

    .line 174
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_78
    if-eqz p1, :cond_7d

    .line 187
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7d
    return-object p3

    .line 155
    :cond_7e
    :try_start_7e
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/c/d;->a(I)Z

    move-result p2

    if-nez p2, :cond_a8

    const-string p2, "The responsed message is %s, code is %d"

    const/4 p3, 0x2

    .line 158
    new-array p3, p3, [Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v3

    .line 158
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_9c} :catch_b4
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_9c} :catch_b2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7e .. :try_end_9c} :catch_b0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7e .. :try_end_9c} :catch_ae
    .catchall {:try_start_7e .. :try_end_9c} :catchall_126

    .line 172
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception p2

    .line 174
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_a4
    if-eqz p1, :cond_125

    goto/16 :goto_104

    .line 156
    :cond_a8
    :try_start_a8
    new-instance p2, Lcom/xiaomi/micloudsdk/c/d;

    invoke-direct {p2, v2, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/net/HttpURLConnection;)V

    throw p2
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ae} :catch_b4
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_ae} :catch_b2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a8 .. :try_end_ae} :catch_b0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a8 .. :try_end_ae} :catch_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_126

    :catch_ae
    move-exception p2

    goto :goto_cf

    :catch_b0
    move-exception p2

    goto :goto_e2

    :catch_b2
    move-exception p2

    goto :goto_f5

    :catch_b4
    move-exception p2

    goto/16 :goto_10b

    :catchall_b7
    move-exception p2

    move-object v1, v0

    goto/16 :goto_127

    :catch_bb
    move-exception p2

    move-object v1, v0

    goto :goto_cf

    :catch_be
    move-exception p2

    move-object v1, v0

    goto :goto_e2

    :catch_c1
    move-exception p2

    move-object v1, v0

    goto :goto_f5

    :catch_c4
    move-exception p2

    move-object v1, v0

    goto :goto_10b

    :catchall_c7
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    goto/16 :goto_127

    :catch_cc
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 168
    :goto_cf
    :try_start_cf
    invoke-virtual {p2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_126

    if-eqz v1, :cond_dc

    .line 172
    :try_start_d4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_dc

    :catch_d8
    move-exception p2

    .line 174
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_dc
    :goto_dc
    if-eqz p1, :cond_125

    goto :goto_104

    :catch_df
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 166
    :goto_e2
    :try_start_e2
    invoke-virtual {p2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_126

    if-eqz v1, :cond_ef

    .line 172
    :try_start_e7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_ef

    :catch_eb
    move-exception p2

    .line 174
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_ef
    :goto_ef
    if-eqz p1, :cond_125

    goto :goto_104

    :catch_f2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 164
    :goto_f5
    :try_start_f5
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_126

    if-eqz v1, :cond_102

    .line 172
    :try_start_fa
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_fe

    goto :goto_102

    :catch_fe
    move-exception p2

    .line 174
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_102
    :goto_102
    if-eqz p1, :cond_125

    .line 187
    :goto_104
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_125

    :catch_108
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_10b
    :try_start_10b
    const-string p3, "UploadChunkRequest"

    .line 162
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaomi/micloudsdk/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_10b .. :try_end_118} :catchall_126

    if-eqz v1, :cond_122

    .line 172
    :try_start_11a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    goto :goto_122

    :catch_11e
    move-exception p2

    .line 174
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_122
    :goto_122
    if-eqz p1, :cond_125

    goto :goto_104

    :cond_125
    :goto_125
    return-object v0

    :catchall_126
    move-exception p2

    :goto_127
    if-eqz v1, :cond_131

    .line 172
    :try_start_129
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    goto :goto_131

    :catch_12d
    move-exception p3

    .line 174
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_131
    :goto_131
    if-eqz p1, :cond_136

    .line 187
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_136
    throw p2
.end method

.method protected a(Ljava/net/HttpURLConnection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string p1, "--*****\r\n"

    .line 197
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "Content-Disposition:form-data;name=\"uploadfile0\";filename=\"uploadfile0\"\r\n"

    .line 198
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    .line 200
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    iget p1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a()I

    move-result v1

    if-ne p1, v1, :cond_35

    .line 202
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    iget v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a()I

    move-result v2

    iget v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->o:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    goto :goto_3e

    .line 204
    :cond_35
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    iget v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    iget v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->o:I

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    .line 206
    :goto_3e
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    iget v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/h;->o:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a(I)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    const-string p1, "\r\n--*****--\r\n"

    .line 207
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method
