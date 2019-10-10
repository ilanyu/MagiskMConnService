.class Lcom/xiaomi/micloudsdk/micloudrichmedia/a;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;)V
    .registers 3

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;)V

    .line 26
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ulrequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/digest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string p2, "Content-Type"

    const-string p3, "application/x-www-form-urlencoded"

    .line 33
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
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    .line 44
    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 43
    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "digest"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    .line 46
    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 45
    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 48
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ext"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/a;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    .line 49
    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 48
    invoke-static {p1, v3, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    return-object v0
.end method
