.class Lcn/kuaipan/kss/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/kss/KssUpload$UploadResult;


# instance fields
.field private a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    iput-object v0, p0, Lcn/kuaipan/kss/b/j;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcn/kuaipan/kss/b/j;->b:Ljava/lang/String;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/kss/b/j;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 2

    .line 349
    iget-object v0, p0, Lcn/kuaipan/kss/b/j;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_14

    .line 367
    iget-object v0, p0, Lcn/kuaipan/kss/b/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 370
    :cond_b
    iget-object v0, p0, Lcn/kuaipan/kss/b/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcn/kuaipan/kss/b/j;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Lcn/kuaipan/kss/b/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 384
    iget-object v0, p0, Lcn/kuaipan/kss/b/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .registers 2

    .line 361
    iget-object v0, p0, Lcn/kuaipan/kss/b/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
