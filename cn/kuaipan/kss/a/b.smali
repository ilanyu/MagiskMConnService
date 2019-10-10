.class public Lcn/kuaipan/kss/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;


# instance fields
.field private a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/kuaipan/kss/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    iput-object v0, p0, Lcn/kuaipan/kss/a/b;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcn/kuaipan/kss/a/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcn/kuaipan/kss/a/b;->c:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/kss/a/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/kuaipan/kss/a/b;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object v0
.end method

.method public a(I)Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;
    .registers 3

    if-ltz p1, :cond_14

    .line 29
    iget-object v0, p0, Lcn/kuaipan/kss/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 32
    :cond_b
    iget-object v0, p0, Lcn/kuaipan/kss/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0}, Lcn/kuaipan/kss/a/b;->a(Lorg/json/JSONObject;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return p1

    :catch_a
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcn/kuaipan/kss/a/b;->c:I

    :try_start_3
    const-string v1, "stat"

    .line 50
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 54
    :cond_12
    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    iput-object v1, p0, Lcn/kuaipan/kss/a/b;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "secure_key"

    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/kss/a/b;->b:Ljava/lang/String;

    const-string v1, "blocks"

    .line 57
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 58
    :goto_25
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 61
    new-instance v3, Lcn/kuaipan/kss/a/d;

    invoke-direct {v3, v1}, Lcn/kuaipan/kss/a/d;-><init>(I)V

    .line 62
    invoke-virtual {v3, v2}, Lcn/kuaipan/kss/a/d;->a(Lorg/json/JSONObject;)Z

    .line 64
    iget-object v2, p0, Lcn/kuaipan/kss/a/b;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget v2, p0, Lcn/kuaipan/kss/a/b;->c:I

    invoke-virtual {v3}, Lcn/kuaipan/kss/a/d;->b()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcn/kuaipan/kss/a/b;->c:I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_45} :catch_4a

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_48
    const/4 p1, 0x1

    return p1

    .line 69
    :catch_4a
    iput v0, p0, Lcn/kuaipan/kss/a/b;->c:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/kuaipan/kss/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcn/kuaipan/kss/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 43
    iget v0, p0, Lcn/kuaipan/kss/a/b;->c:I

    return v0
.end method
