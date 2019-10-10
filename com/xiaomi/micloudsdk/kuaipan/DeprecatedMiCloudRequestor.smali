.class public abstract Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/kuaipan/android/kss/KssMaster$IRemote;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/kuaipan/android/kss/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "data"

.field public static final b:Ljava/lang/String; = "signature"

.field public static final e:Ljava/lang/String; = "encrypted_user_id"

.field private static final f:Ljava/lang/String; = "MiCloudRequestor"


# instance fields
.field protected c:Landroid/accounts/Account;

.field protected d:Lcom/xiaomi/micloudsdk/b/a;

.field private final g:Lcn/kuaipan/android/http/g;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/micloudsdk/b/a;)V
    .registers 7

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcn/kuaipan/android/http/g;

    invoke-direct {v0, p1}, Lcn/kuaipan/android/http/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->g:Lcn/kuaipan/android/http/g;

    .line 79
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->g:Lcn/kuaipan/android/http/g;

    invoke-static {}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcn/kuaipan/android/http/g;->a(ILjava/lang/String;)V

    .line 80
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->c:Landroid/accounts/Account;

    .line 81
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d:Lcom/xiaomi/micloudsdk/b/a;

    .line 82
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;)Landroid/content/Context;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->h:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;I)Lcn/kuaipan/android/http/f;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor<",
            "TT;>.ApiConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcn/kuaipan/android/http/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-eqz v1, :cond_f7

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->a()Landroid/net/Uri;

    move-result-object v5

    .line 424
    new-instance v6, Lcn/kuaipan/android/http/KscHttpRequest;

    iget-object v7, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/IKscTransferListener;)V

    .line 426
    invoke-virtual {v1, v2, v3, v6}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->a(Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/http/KscHttpRequest;)Ljava/util/List;

    if-lez v4, :cond_37

    .line 429
    invoke-virtual {v6}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    const-string v7, "X-XIAOMI-REDIRECT-COUNT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_37
    invoke-virtual {v6}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    const-string v7, "X-XIAOMI-SUPPORT-REDIRECT"

    const-string v8, "true"

    invoke-interface {v5, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 435
    iget-object v5, v0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->g:Lcn/kuaipan/android/http/g;

    const/4 v9, 0x2

    invoke-virtual {v5, v6, v9}, Lcn/kuaipan/android/http/g;->a(Lcn/kuaipan/android/http/KscHttpRequest;I)Lcn/kuaipan/android/http/f;

    move-result-object v5

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v13, v9, v7

    const-wide/16 v6, 0x0

    .line 439
    invoke-virtual {v5}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object v8

    if-eqz v8, :cond_69

    .line 440
    invoke-virtual {v5}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    if-eqz v8, :cond_69

    .line 442
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_69
    move-wide v15, v6

    .line 445
    invoke-virtual {v5}, Lcn/kuaipan/android/http/f;->d()I

    move-result v6

    const-string v7, ""

    .line 447
    invoke-virtual {v5}, Lcn/kuaipan/android/http/f;->a()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_82

    .line 448
    invoke-virtual {v5}, Lcn/kuaipan/android/http/f;->a()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    :cond_82
    move-object/from16 v18, v7

    const-string v7, "Micloud"

    const/4 v8, 0x3

    .line 450
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a7

    const-string v7, "MiCloudRequestor"

    .line 451
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute response status code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/kuaipan/android/http/f;->d()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_a7
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->a()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v18}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->a(Ljava/lang/String;JJILjava/lang/String;)V

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_f6

    .line 455
    invoke-virtual {v5}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 456
    iget-object v7, v0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d:Lcom/xiaomi/micloudsdk/b/a;

    iget-object v7, v7, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Micloud"

    .line 457
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_dd

    const-string v7, "MiCloudRequestor"

    .line 458
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_dd
    invoke-static {v6, v4}, Lcom/xiaomi/micloudsdk/utils/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 461
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f5

    add-int/lit8 v4, v4, 0x1

    .line 463
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Landroid/net/Uri;)Landroid/net/Uri;

    .line 464
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;I)Lcn/kuaipan/android/http/f;

    move-result-object v1

    return-object v1

    :cond_f5
    return-object v5

    :cond_f6
    return-object v5

    .line 419
    :cond_f7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "API Config can not be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    .line 86
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    .line 612
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "encrypted_user_id"

    .line 613
    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz p2, :cond_23

    .line 591
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 592
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 596
    :cond_23
    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v0, p3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 559
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 560
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_21
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1f

    goto :goto_11

    .line 565
    :cond_1b
    :goto_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_26

    :catchall_1f
    move-exception p0

    goto :goto_4d

    :catch_21
    move-exception p1

    .line 563
    :try_start_22
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    goto :goto_1b

    :goto_26
    const/4 p1, 0x2

    .line 568
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 577
    :try_start_2d
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3e} :catch_3f

    return-object v1

    .line 579
    :catch_3f
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 571
    :cond_45
    new-instance p0, Ljava/io/IOException;

    const-string p1, "decoder is null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 565
    :goto_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 544
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    const-string v0, "UTF-8"

    .line 546
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 545
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;)Lorg/apache/http/Header;
    .registers 4

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceToken="

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget-object p1, p1, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_19

    const-string p1, "; cUserId="

    .line 604
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_19
    new-instance p0, Lorg/apache/http/message/BasicHeader;

    const-string p1, "Cookie"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor<",
            "TT;>.ApiConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 348
    :try_start_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;I)Lcn/kuaipan/android/http/f;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_6} :catch_54
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_4c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_6} :catch_44
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_6} :catch_3c
    .catchall {:try_start_2 .. :try_end_6} :catchall_3a

    .line 349
    :try_start_6
    invoke-static {p1}, Lcn/kuaipan/android/a/b;->a(Lcn/kuaipan/android/http/f;)V

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcn/kuaipan/android/http/f;Z)V

    .line 352
    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->c()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 359
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d:Lcom/xiaomi/micloudsdk/b/a;

    iget-object p3, p3, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Ljava/io/InputStream;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_1a} :catch_37
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_34
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_1a} :catch_31
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_1a} :catch_2e
    .catchall {:try_start_6 .. :try_end_1a} :catchall_2b

    .line 375
    :try_start_1a
    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->e()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_1d

    :catch_1d
    return-object p2

    .line 355
    :cond_1e
    :try_start_1e
    new-instance p2, Lcn/kuaipan/android/a/e;

    const p3, 0x7a509

    .line 356
    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_2b} :catch_37
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2b} :catch_34
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1e .. :try_end_2b} :catch_31
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1e .. :try_end_2b} :catch_2e
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p2

    move-object v1, p1

    goto :goto_5c

    :catch_2e
    move-exception p2

    move-object v1, p1

    goto :goto_3d

    :catch_31
    move-exception p2

    move-object v1, p1

    goto :goto_45

    :catch_34
    move-exception p2

    move-object v1, p1

    goto :goto_4d

    :catch_37
    move-exception p2

    move-object v1, p1

    goto :goto_55

    :catchall_3a
    move-exception p2

    goto :goto_5c

    :catch_3c
    move-exception p2

    :goto_3d
    :try_start_3d
    const-string p1, "exec failed."

    .line 368
    invoke-static {p2, p1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    :catch_44
    move-exception p2

    :goto_45
    const-string p1, "exec failed."

    .line 366
    invoke-static {p2, p1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    :catch_4c
    move-exception p2

    :goto_4d
    const-string p1, "exec failed."

    .line 364
    invoke-static {p2, p1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    :catch_54
    move-exception p2

    :goto_55
    const-string p1, "exec failed."

    .line 362
    invoke-static {p2, p1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_3a

    .line 375
    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Lcn/kuaipan/android/http/f;->e()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_5f

    .line 378
    :catch_5f
    throw p2
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 387
    :try_start_0
    invoke-static {p1, p0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 388
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 392
    :cond_c
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_11} :catch_2a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_11} :catch_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p0

    const-string p1, "getResultJSON failed."

    .line 400
    invoke-static {p0, p1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0

    :catch_1a
    move-exception p0

    const-string p1, "getResultJSON failed."

    .line 398
    invoke-static {p0, p1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0

    :catch_22
    move-exception p0

    const-string p1, "getResultJSON failed."

    .line 396
    invoke-static {p0, p1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0

    :catch_2a
    move-exception p0

    const-string p1, "getResultJSON failed."

    .line 394
    invoke-static {p0, p1}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0
.end method

.method private a(Lcn/kuaipan/android/http/f;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/i;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->d()I

    move-result p2

    .line 408
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/c/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_f

    return-void

    .line 411
    :cond_f
    new-instance v0, Lcn/kuaipan/android/a/i;

    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcn/kuaipan/android/a/i;-><init>(ILjava/lang/String;)V

    throw v0

    .line 409
    :cond_19
    new-instance v0, Lcom/xiaomi/micloudsdk/c/d;

    invoke-virtual {p1}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILorg/apache/http/HttpResponse;)V

    throw v0
.end method


# virtual methods
.method public synthetic a(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/c;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->c(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lcom/xiaomi/opensdk/file/sdk/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/c;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->b(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Lcom/xiaomi/opensdk/file/sdk/d;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/kuaipan/android/kss/upload/b;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected a(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/kuaipan/android/kss/upload/UploadFileInfo;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lcn/kuaipan/android/kss/upload/b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    if-nez p3, :cond_a

    const-string p1, "MiCloudRequestor"

    const-string p2, "UploadResult is null."

    .line 176
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 180
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7a129

    if-nez v1, :cond_84

    .line 185
    new-instance v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->b:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v1, p0, v3, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->b(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)Ljava/util/HashMap;

    move-result-object v0

    .line 190
    :try_start_22
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->c(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-direct {p0, v1, v0, v3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->b(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_2e} :catch_7c

    if-eqz v1, :cond_61

    .line 199
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_61

    .line 204
    invoke-static {v1}, Lcom/xiaomi/opensdk/file/b/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 205
    const-class v2, Lcom/xiaomi/opensdk/file/sdk/a;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/opensdk/file/sdk/a;

    const-string v1, "OK"

    .line 208
    iget-object v2, v0, Lcom/xiaomi/opensdk/file/sdk/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    return-void

    .line 213
    :cond_50
    invoke-virtual {p3}, Lcn/kuaipan/android/kss/upload/b;->a()Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    move-result-object p3

    .line 212
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->b(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Lcom/xiaomi/opensdk/file/sdk/d;

    .line 218
    new-instance p1, Lcn/kuaipan/android/a/j;

    const/16 p2, 0xc8

    iget-object p3, v0, Lcom/xiaomi/opensdk/file/sdk/a;->c:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lcn/kuaipan/android/a/j;-><init>(ILjava/lang/String;)V

    throw p1

    .line 200
    :cond_61
    new-instance p1, Lcn/kuaipan/android/a/e;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "kssJson is null or empty, result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_7c
    move-exception p1

    const-string p2, "commitUpload failed."

    .line 196
    invoke-static {p1, p2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    .line 182
    :cond_84
    new-instance p1, Lcn/kuaipan/android/a/e;

    const-string p2, "commitUrl is null or empty."

    invoke-direct {p1, v2, p2}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Lcom/xiaomi/opensdk/file/sdk/d;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lcn/kuaipan/android/kss/upload/UploadFileInfo;",
            ")",
            "Lcom/xiaomi/opensdk/file/sdk/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->b(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7a129

    if-nez v0, :cond_5f

    .line 101
    new-instance v0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    sget-object v2, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->b:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v0, p0, v2, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Ljava/util/HashMap;

    move-result-object p1

    .line 106
    :try_start_18
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->b(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Ljava/lang/String;

    move-result-object p3

    .line 108
    invoke-direct {p0, v0, p1, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_24} :catch_57

    if-eqz p2, :cond_3c

    .line 115
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_3c

    .line 120
    invoke-static {p2}, Lcom/xiaomi/opensdk/file/b/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 121
    const-class p3, Lcom/xiaomi/opensdk/file/sdk/d;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/file/sdk/d;

    return-object p1

    .line 116
    :cond_3c
    new-instance p2, Lcn/kuaipan/android/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "kssJson is null or empty, result:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_57
    move-exception p1

    const-string p2, "requestUpload failed."

    .line 112
    invoke-static {p1, p2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    .line 98
    :cond_5f
    new-instance p1, Lcn/kuaipan/android/a/e;

    const-string p2, "requestUploadUrl is null or empty."

    invoke-direct {p1, v1, p2}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method protected abstract b(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract b(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/kuaipan/android/kss/upload/UploadFileInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected b(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/kuaipan/android/kss/upload/b;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract b(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public c(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lcom/xiaomi/opensdk/file/sdk/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/xiaomi/opensdk/file/sdk/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->d(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7a129

    if-nez v1, :cond_5f

    .line 277
    new-instance v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v1, p0, v3, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->e(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Ljava/util/HashMap;

    move-result-object v0

    .line 279
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->f(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-direct {p0, v1, v0, v3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->a(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 285
    :try_start_20
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->c(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_24} :catch_57

    if-eqz p1, :cond_3c

    .line 290
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3c

    .line 295
    invoke-static {p1}, Lcom/xiaomi/opensdk/file/b/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 296
    const-class v1, Lcom/xiaomi/opensdk/file/sdk/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/file/sdk/c;

    return-object p1

    .line 291
    :cond_3c
    new-instance p1, Lcn/kuaipan/android/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kssJson is null or empty, result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_57
    move-exception p1

    const-string v0, "handleRequestDownloadResultJson failed."

    .line 287
    invoke-static {p1, v0}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p1

    throw p1

    .line 274
    :cond_5f
    new-instance p1, Lcn/kuaipan/android/a/e;

    const-string v0, "requestDownloadUrl is null or empty."

    invoke-direct {p1, v2, v0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method protected abstract c(Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/kuaipan/android/kss/upload/b;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract c(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract d(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected e(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected f(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
