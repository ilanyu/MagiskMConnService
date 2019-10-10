.class public final enum Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestUploadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

.field public static final enum b:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

.field private static final synthetic c:[Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 60
    new-instance v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    const-string v1, "NeedUpload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    .line 61
    new-instance v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    const-string v1, "FileExisted"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->b:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    sget-object v1, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->b:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    aput-object v1, v0, v3

    sput-object v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->c:[Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;
    .registers 2

    .line 59
    const-class v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;
    .registers 1

    .line 59
    sget-object v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->c:[Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    invoke-virtual {v0}, [Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    return-object v0
.end method
