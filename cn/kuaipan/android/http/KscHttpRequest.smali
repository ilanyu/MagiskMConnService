.class public Lcn/kuaipan/android/http/KscHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "KscHttpRequest"


# instance fields
.field private final b:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

.field private c:Landroid/net/Uri;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/apache/http/entity/AbstractHttpEntity;

.field private f:Z

.field private final g:Lcn/kuaipan/android/http/c;

.field private final h:Lcn/kuaipan/android/http/IKscTransferListener;

.field private i:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 52
    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, p1, v0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 68
    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 76
    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 86
    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .registers 7

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->f:Z

    .line 91
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 92
    iput-object p2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    .line 93
    iput-object p3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 94
    iput-object p4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lcn/kuaipan/android/http/c;

    .line 95
    iput-object p5, p0, Lcn/kuaipan/android/http/KscHttpRequest;->h:Lcn/kuaipan/android/http/IKscTransferListener;

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V
    .registers 9

    .line 60
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .registers 10

    .line 72
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .registers 11

    .line 81
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/IKscTransferListener;)V

    return-void
.end method

.method private static a(Lorg/apache/http/entity/AbstractHttpEntity;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/entity/AbstractHttpEntity;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1f

    .line 285
    :try_start_7
    invoke-static {p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;

    move-result-object p0

    .line 286
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_1f

    :catch_f
    move-exception p0

    const-string p1, "KscHttpRequest"

    const-string v0, "Failed parse an user entity."

    .line 288
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed parse an user entity. The user entity should be parseable by URLEncodedUtils.parse(HttpEntity)"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 294
    :cond_1f
    :goto_1f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static a([Lcn/kuaipan/android/http/a/h;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/kuaipan/android/http/a/h;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 270
    :cond_8
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3e

    aget-object v3, p0, v2

    .line 271
    instance-of v4, v3, Lcn/kuaipan/android/http/a/k;

    if-eqz v4, :cond_25

    .line 272
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v3}, Lcn/kuaipan/android/http/a/h;->d()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcn/kuaipan/android/http/a/k;

    invoke-virtual {v3}, Lcn/kuaipan/android/http/a/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_25
    const-string v4, "KscHttpRequest"

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lost a non-string in parts. part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3e
    return-object v0
.end method

.method private static a(Ljava/util/List;)[Lcn/kuaipan/android/http/a/h;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)[",
            "Lcn/kuaipan/android/http/a/h;"
        }
    .end annotation

    if-eqz p0, :cond_7c

    .line 415
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7c

    .line 419
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 420
    new-array v1, v0, [Lcn/kuaipan/android/http/a/h;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_7b

    .line 422
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 423
    instance-of v4, v3, Lcn/kuaipan/android/http/a/f;

    if-eqz v4, :cond_4d

    .line 425
    :try_start_1c
    new-instance v4, Lcn/kuaipan/android/http/a/d;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lcn/kuaipan/android/http/a/f;

    invoke-virtual {v6}, Lcn/kuaipan/android/http/a/f;->a()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v1, v2
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2e} :catch_2f

    goto :goto_78

    :catch_2f
    move-exception p0

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The file to be sent should be exist. file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v3, Lcn/kuaipan/android/http/a/f;

    .line 428
    invoke-virtual {v3}, Lcn/kuaipan/android/http/a/f;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 430
    :cond_4d
    instance-of v4, v3, Lcn/kuaipan/android/http/a/b;

    if-eqz v4, :cond_67

    .line 431
    new-instance v4, Lcn/kuaipan/android/http/a/d;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    check-cast v3, Lcn/kuaipan/android/http/a/b;

    .line 432
    invoke-virtual {v3}, Lcn/kuaipan/android/http/a/b;->a()[B

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v4, v1, v2

    goto :goto_78

    .line 434
    :cond_67
    new-instance v4, Lcn/kuaipan/android/http/a/k;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v3, v6}, Lcn/kuaipan/android/http/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_7b
    return-object v1

    :cond_7c
    :goto_7c
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 401
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http"

    .line 402
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "https"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private static b(Lorg/apache/http/entity/AbstractHttpEntity;)Z
    .registers 2

    if-eqz p0, :cond_f

    .line 410
    instance-of v0, p0, Lcn/kuaipan/android/http/a/g;

    if-nez v0, :cond_f

    .line 411
    invoke-static {p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static d(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 255
    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 256
    instance-of v2, v1, Lcn/kuaipan/android/http/a/f;

    if-nez v2, :cond_24

    instance-of v2, v1, Lcn/kuaipan/android/http/a/b;

    if-nez v2, :cond_24

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_24
    const-string v2, "KscHttpRequest"

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lost a non-string valuePair when getPostString. pair="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_3b
    return-object v0
.end method

.method private h()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->i:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_5

    return-void

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HttpRequest has been created. All input can\'t be changed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 5

    .line 318
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 322
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->b:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    if-nez v1, :cond_23

    .line 326
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v1, :cond_21

    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->a:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    goto :goto_23

    :cond_21
    sget-object v1, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->b:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    :cond_23
    :goto_23
    const/4 v2, 0x0

    .line 331
    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$1;->a:[I

    invoke-virtual {v1}, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_88

    goto :goto_61

    .line 340
    :pswitch_30
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 342
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->j()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 344
    :cond_43
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_61

    .line 333
    :pswitch_49
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    :cond_5a
    const-string v0, "KscHttpRequest"

    const-string v1, "Post data is not empty, but method is GET. All post data is lost."

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_61
    :goto_61
    iget-boolean v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->f:Z

    if-eqz v0, :cond_6c

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 350
    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_6c
    iput-object v2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->i:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v2

    .line 319
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request uri is not valid. uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_49
        :pswitch_30
    .end packed-switch
.end method

.method private j()Lorg/apache/http/entity/AbstractHttpEntity;
    .registers 8

    .line 357
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 358
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    .line 359
    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 360
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    return-object v0

    :cond_f
    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 363
    instance-of v3, v0, Lcn/kuaipan/android/http/a/g;

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    if-nez v3, :cond_34

    .line 365
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 366
    instance-of v6, v5, Lcn/kuaipan/android/http/a/f;

    if-nez v6, :cond_35

    instance-of v5, v5, Lcn/kuaipan/android/http/a/b;

    if-eqz v5, :cond_1f

    goto :goto_35

    :cond_34
    move v2, v3

    :cond_35
    :goto_35
    if-eqz v2, :cond_56

    if-eqz v0, :cond_47

    .line 376
    instance-of v2, v0, Lcn/kuaipan/android/http/a/g;

    if-eqz v2, :cond_47

    .line 377
    check-cast v0, Lcn/kuaipan/android/http/a/g;

    .line 378
    invoke-static {v1}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Ljava/util/List;)[Lcn/kuaipan/android/http/a/h;

    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Lcn/kuaipan/android/http/a/g;->a([Lcn/kuaipan/android/http/a/h;)V

    goto :goto_5f

    .line 381
    :cond_47
    invoke-static {v0, v1}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Lorg/apache/http/entity/AbstractHttpEntity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Ljava/util/List;)[Lcn/kuaipan/android/http/a/h;

    move-result-object v0

    .line 382
    new-instance v1, Lcn/kuaipan/android/http/a/g;

    invoke-direct {v1, v0}, Lcn/kuaipan/android/http/a/g;-><init>([Lcn/kuaipan/android/http/a/h;)V

    move-object v0, v1

    goto :goto_5f

    .line 387
    :cond_56
    :try_start_56
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_56 .. :try_end_5f} :catch_60

    :goto_5f
    return-object v0

    :catch_60
    move-exception v0

    const-string v1, "KscHttpRequest"

    const-string v2, "JVM not support UTF_8?"

    .line 389
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JVM not support UTF_8?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .registers 2

    .line 130
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    .line 116
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 109
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    .line 111
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_b
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 161
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    .line 162
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    if-eqz v0, :cond_18

    .line 166
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    return-void

    .line 163
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "A uri should be set firstly"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/net/URI;)V
    .registers 2

    .line 120
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_f

    .line 121
    :cond_7
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    return-void
.end method

.method public a(Ljava/net/URL;)V
    .registers 2

    .line 125
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_f

    .line 126
    :cond_7
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_30

    .line 143
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 144
    instance-of v3, v2, Lcn/kuaipan/android/http/a/f;

    if-nez v3, :cond_2c

    instance-of v3, v2, Lcn/kuaipan/android/http/a/b;

    if-eqz v3, :cond_28

    goto :goto_2c

    .line 147
    :cond_28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 145
    :cond_2c
    :goto_2c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 152
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_39

    .line 153
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->b(Ljava/util/Collection;)V

    .line 155
    :cond_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_42

    .line 156
    invoke-virtual {p0, v1}, Lcn/kuaipan/android/http/KscHttpRequest;->c(Ljava/util/Collection;)V

    :cond_42
    return-void
.end method

.method public a(Lorg/apache/http/entity/AbstractHttpEntity;)V
    .registers 2

    .line 303
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    .line 304
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 305
    invoke-static {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->b(Lorg/apache/http/entity/AbstractHttpEntity;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 306
    iget-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_10
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->f:Z

    return-void
.end method

.method public a([B)V
    .registers 3

    .line 299
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Lorg/apache/http/entity/AbstractHttpEntity;)V

    return-void
.end method

.method public varargs a([Lorg/apache/http/NameValuePair;)V
    .registers 2

    .line 134
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    .line 175
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    if-eqz v0, :cond_33

    if-nez p1, :cond_a

    return-void

    .line 183
    :cond_a
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 185
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_14

    .line 187
    :cond_2c
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->c:Landroid/net/Uri;

    return-void

    .line 176
    :cond_33
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "A uri should be set firstly"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs b([Lorg/apache/http/NameValuePair;)V
    .registers 2

    .line 170
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/KscHttpRequest;->b(Ljava/util/Collection;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 5

    .line 217
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v0, :cond_11

    .line 219
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcn/kuaipan/android/http/KscHttpRequest;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_11
    instance-of v1, v0, Lcn/kuaipan/android/http/a/g;

    if-eqz v1, :cond_39

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    check-cast v0, Lcn/kuaipan/android/http/a/g;

    invoke-virtual {v0}, Lcn/kuaipan/android/http/a/g;->b()[Lcn/kuaipan/android/http/a/h;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 227
    invoke-static {v0}, Lcn/kuaipan/android/http/KscHttpRequest;->a([Lcn/kuaipan/android/http/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    :cond_29
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcn/kuaipan/android/http/KscHttpRequest;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "UTF-8"

    .line 231
    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :cond_39
    invoke-static {v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 235
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcn/kuaipan/android/http/KscHttpRequest;->a(Lorg/apache/http/entity/AbstractHttpEntity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcn/kuaipan/android/http/KscHttpRequest;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 242
    :try_start_59
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_5e

    goto :goto_67

    :catch_5e
    move-exception v0

    const-string v2, "KscHttpRequest"

    const-string v3, "Entity can\'t be cover to a String"

    .line 244
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    move-object v0, v1

    :goto_67
    return-object v0
.end method

.method public c(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->h()V

    if-nez p1, :cond_6

    return-void

    .line 201
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-static {v0}, Lcn/kuaipan/android/http/KscHttpRequest;->b(Lorg/apache/http/entity/AbstractHttpEntity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 206
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 202
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Http not support send form data and binary data in one request."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs c([Lorg/apache/http/NameValuePair;)V
    .registers 2

    .line 191
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/KscHttpRequest;->c(Ljava/util/Collection;)V

    return-void
.end method

.method public d()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 2

    .line 311
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->i:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_a

    .line 312
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->i()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->i:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 314
    :cond_a
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->i:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public e()Lcn/kuaipan/android/http/c;
    .registers 2

    .line 406
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->g:Lcn/kuaipan/android/http/c;

    return-object v0
.end method

.method public f()Lcn/kuaipan/android/http/IKscTransferListener;
    .registers 2

    .line 441
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->h:Lcn/kuaipan/android/http/IKscTransferListener;

    return-object v0
.end method

.method public g()J
    .registers 3

    .line 445
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->e:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0}, Lorg/apache/http/entity/AbstractHttpEntity;->getContentLength()J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method
