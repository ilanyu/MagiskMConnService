.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/c;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/f;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dlrequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_1e
    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string p2, "Content-Type"

    const-string p3, "application/x-www-form-urlencoded"

    .line 58
    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
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

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->b:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 42
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "shareId"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->a:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 44
    :cond_32
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "fileId"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/c;->a:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_44
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 21
    invoke-super {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/f;
    .registers 3

    .line 21
    invoke-super {p0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/f;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "GET"

    return-object v0
.end method
