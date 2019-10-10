.class Lcn/kuaipan/kss/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 453
    iput-object v0, p0, Lcn/kuaipan/kss/b/h;->a:Ljava/lang/String;

    .line 454
    iput-object v0, p0, Lcn/kuaipan/kss/b/h;->b:Ljava/lang/String;

    .line 455
    iput-object v0, p0, Lcn/kuaipan/kss/b/h;->c:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "ERR_INVALID_FILE_META"

    const-string v1, "ERR_INVALID_BLOCK_META"

    const-string v2, "ERR_INVALID_UPLOAD_ID"

    const-string v3, "ERR_BLOCK_CORRUPTED"

    .line 441
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 445
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    .line 446
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1e
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 5

    .line 412
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 414
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "stat"

    .line 416
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/kss/b/h;->a:Ljava/lang/String;

    .line 418
    iget-object p1, p0, Lcn/kuaipan/kss/b/h;->a:Ljava/lang/String;

    const-string v2, "CONTINUE_UPLOAD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 420
    iget-object p1, p0, Lcn/kuaipan/kss/b/h;->b:Ljava/lang/String;

    if-nez p1, :cond_2d

    const-string p1, "upload_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "upload_id"

    .line 421
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/kss/b/h;->b:Ljava/lang/String;

    .line 423
    :cond_2d
    iget-object p1, p0, Lcn/kuaipan/kss/b/h;->b:Ljava/lang/String;

    if-nez p1, :cond_60

    .line 424
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    goto :goto_60

    .line 426
    :cond_34
    iget-object p1, p0, Lcn/kuaipan/kss/b/h;->a:Ljava/lang/String;

    const-string v2, "BLOCK_COMPLETED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const-string p1, "commit_meta"

    .line 427
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_60

    const-string p1, "commit_meta"

    .line 428
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/kss/b/h;->c:Ljava/lang/String;

    goto :goto_60

    .line 430
    :cond_4f
    iget-object p1, p0, Lcn/kuaipan/kss/b/h;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/kuaipan/kss/b/h;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 431
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->e:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5a

    goto :goto_60

    :catch_5a
    move-exception p1

    .line 434
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    :cond_60
    :goto_60
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 398
    iget-object v0, p0, Lcn/kuaipan/kss/b/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Lcn/kuaipan/kss/b/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcn/kuaipan/kss/b/h;->a:Ljava/lang/String;

    .line 407
    iput-object v0, p0, Lcn/kuaipan/kss/b/h;->b:Ljava/lang/String;

    .line 408
    iput-object v0, p0, Lcn/kuaipan/kss/b/h;->c:Ljava/lang/String;

    return-void
.end method
