.class Lcn/kuaipan/kss/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcn/kuaipan/kss/b/g;->a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcn/kuaipan/kss/b/g;->b:Z

    .line 246
    iput v0, p0, Lcn/kuaipan/kss/b/g;->c:I

    .line 249
    iput v0, p0, Lcn/kuaipan/kss/b/g;->d:I

    .line 250
    iput v0, p0, Lcn/kuaipan/kss/b/g;->e:I

    .line 251
    iput v0, p0, Lcn/kuaipan/kss/b/g;->f:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .line 223
    iget-object v0, p0, Lcn/kuaipan/kss/b/g;->a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    if-ge p1, v0, :cond_8

    goto :goto_2c

    .line 228
    :cond_8
    iget v1, p0, Lcn/kuaipan/kss/b/g;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcn/kuaipan/kss/b/g;->c:I

    .line 229
    iget p1, p0, Lcn/kuaipan/kss/b/g;->c:I

    iget v1, p0, Lcn/kuaipan/kss/b/g;->d:I

    if-ge p1, v1, :cond_1c

    iget p1, p0, Lcn/kuaipan/kss/b/g;->c:I

    iget v1, p0, Lcn/kuaipan/kss/b/g;->e:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcn/kuaipan/kss/b/g;->f:I

    if-lt p1, v1, :cond_2b

    .line 230
    :cond_1c
    iget-object p1, p0, Lcn/kuaipan/kss/b/g;->a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

    iget v1, p0, Lcn/kuaipan/kss/b/g;->c:I

    invoke-interface {p1, v1}, Lcn/kuaipan/kss/KssDef$OnUpDownload;->a(I)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcn/kuaipan/kss/b/g;->b:Z

    .line 231
    iget p1, p0, Lcn/kuaipan/kss/b/g;->c:I

    iput p1, p0, Lcn/kuaipan/kss/b/g;->e:I

    :cond_2b
    return-void

    :cond_2c
    :goto_2c
    return-void
.end method

.method public a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;)V
    .registers 3

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcn/kuaipan/kss/b/g;->b:Z

    .line 217
    invoke-interface {p1}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl;->a()I

    move-result p1

    iput p1, p0, Lcn/kuaipan/kss/b/g;->c:I

    .line 218
    iget p1, p0, Lcn/kuaipan/kss/b/g;->c:I

    iput p1, p0, Lcn/kuaipan/kss/b/g;->e:I

    return-void
.end method

.method public a(Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 207
    :cond_3
    iput-object p2, p0, Lcn/kuaipan/kss/b/g;->a:Lcn/kuaipan/kss/KssDef$OnUpDownload;

    const/4 p2, 0x0

    .line 208
    iput-boolean p2, p0, Lcn/kuaipan/kss/b/g;->b:Z

    .line 209
    iput p2, p0, Lcn/kuaipan/kss/b/g;->c:I

    .line 210
    invoke-interface {p1}, Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;->d()I

    move-result p1

    iput p1, p0, Lcn/kuaipan/kss/b/g;->d:I

    .line 211
    iput p2, p0, Lcn/kuaipan/kss/b/g;->e:I

    .line 212
    iget p1, p0, Lcn/kuaipan/kss/b/g;->d:I

    div-int/lit8 p1, p1, 0x32

    iput p1, p0, Lcn/kuaipan/kss/b/g;->f:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 240
    iput-boolean p1, p0, Lcn/kuaipan/kss/b/g;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lcn/kuaipan/kss/b/g;->b:Z

    return v0
.end method
