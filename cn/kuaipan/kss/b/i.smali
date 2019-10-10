.class Lcn/kuaipan/kss/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Lcn/kuaipan/kss/b/i;->a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lcn/kuaipan/kss/b/i;->b:Z

    .line 490
    iput v0, p0, Lcn/kuaipan/kss/b/i;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 465
    :cond_3
    iput-object p2, p0, Lcn/kuaipan/kss/b/i;->a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 484
    iput-boolean p1, p0, Lcn/kuaipan/kss/b/i;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 480
    iget-boolean v0, p0, Lcn/kuaipan/kss/b/i;->b:Z

    return v0
.end method

.method public a(I)Z
    .registers 3

    if-lez p1, :cond_15

    .line 471
    iget v0, p0, Lcn/kuaipan/kss/b/i;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/kuaipan/kss/b/i;->c:I

    .line 472
    iget-object p1, p0, Lcn/kuaipan/kss/b/i;->a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

    if-eqz p1, :cond_15

    .line 473
    iget-object p1, p0, Lcn/kuaipan/kss/b/i;->a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

    iget v0, p0, Lcn/kuaipan/kss/b/i;->c:I

    invoke-interface {p1, v0}, Lcn/kuaipan/kss/KssDef$OnUpDownload;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/kuaipan/kss/b/i;->b:Z

    .line 476
    :cond_15
    iget-boolean p1, p0, Lcn/kuaipan/kss/b/i;->b:Z

    return p1
.end method
