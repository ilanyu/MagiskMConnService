.class public Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiConfig"
.end annotation


# instance fields
.field public final a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

.field final synthetic b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    const/4 p1, 0x0

    .line 479
    invoke-static {p3, p1}, Lcom/xiaomi/micloudsdk/utils/d;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->c:Landroid/net/Uri;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->c:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method a()Landroid/net/Uri;
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/http/KscHttpRequest;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/kuaipan/android/http/KscHttpRequest;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_32

    .line 492
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 493
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 494
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 495
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    .line 496
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_32
    if-eqz p2, :cond_5a

    .line 502
    :try_start_34
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 503
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d:Lcom/xiaomi/micloudsdk/b/a;

    if-eqz p2, :cond_48

    .line 504
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d:Lcom/xiaomi/micloudsdk/b/a;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 506
    :cond_48
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "data"

    invoke-direct {p2, v1, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :catch_53
    move-exception p1

    goto :goto_be

    :catch_55
    move-exception p1

    goto :goto_c8

    :catch_57
    move-exception p1

    goto/16 :goto_d2

    :cond_5a
    :goto_5a
    const/4 p1, 0x0

    .line 510
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->c:Landroid/accounts/Account;

    if-eqz p2, :cond_99

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d:Lcom/xiaomi/micloudsdk/b/a;

    if-eqz p2, :cond_99

    .line 511
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->c:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object v1, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d:Lcom/xiaomi/micloudsdk/b/a;

    iget-object v1, v1, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 514
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "signature"

    invoke-direct {p2, v1, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->c:Landroid/accounts/Account;

    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->b:Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d:Lcom/xiaomi/micloudsdk/b/a;

    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;)Lorg/apache/http/Header;

    move-result-object p1

    .line 519
    :cond_99
    sget-object p2, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    if-ne p2, v1, :cond_a3

    .line 520
    invoke-virtual {p3, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->b(Ljava/util/Collection;)V

    goto :goto_b6

    .line 522
    :cond_a3
    invoke-virtual {p3, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->c(Ljava/util/Collection;)V

    .line 523
    invoke-virtual {p3}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p2

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 525
    :goto_b6
    invoke-virtual {p3}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V
    :try_end_bd
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_34 .. :try_end_bd} :catch_57
    .catch Ljavax/crypto/BadPaddingException; {:try_start_34 .. :try_end_bd} :catch_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_bd} :catch_53

    return-object v0

    .line 533
    :goto_be
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p2, "filterQuerys failed."

    .line 534
    invoke-static {p1, p2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    .line 530
    :goto_c8
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const-string p2, "filterQuerys failed."

    .line 531
    invoke-static {p1, p2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    :goto_d2
    const-string p2, "filterQuerys failed."

    .line 528
    invoke-static {p1, p2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1
.end method
