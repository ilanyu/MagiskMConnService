.class Lcn/kuaipan/kss/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;


# static fields
.field static a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j()Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;
    .registers 1

    .line 272
    sget-object v0, Lcn/kuaipan/kss/a/e;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    if-nez v0, :cond_b

    .line 273
    new-instance v0, Lcn/kuaipan/kss/a/e;

    invoke-direct {v0}, Lcn/kuaipan/kss/a/e;-><init>()V

    sput-object v0, Lcn/kuaipan/kss/a/e;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    .line 275
    :cond_b
    sget-object v0, Lcn/kuaipan/kss/a/e;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    return-object v0
.end method


# virtual methods
.method public a()Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 2

    .line 213
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;
    .registers 2

    .line 218
    sget-object v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->b:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    return-object v0
.end method

.method public b(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
