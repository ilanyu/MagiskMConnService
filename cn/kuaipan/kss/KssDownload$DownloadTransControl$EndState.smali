.class public final enum Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/kss/KssDownload$DownloadTransControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

.field public static final enum b:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

.field public static final enum c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

.field public static final enum d:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

.field private static final synthetic e:[Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 70
    new-instance v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    const-string v1, "Completed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->a:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    .line 71
    new-instance v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    const-string v1, "Interrupt"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->b:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    .line 72
    new-instance v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    const-string v1, "Transing"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    .line 73
    new-instance v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    const-string v1, "DataCorrupted"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->d:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    sget-object v1, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->a:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->b:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->d:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    aput-object v1, v0, v5

    sput-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->e:[Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;
    .registers 2

    .line 69
    const-class v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;
    .registers 1

    .line 69
    sget-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->e:[Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    invoke-virtual {v0}, [Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    return-object v0
.end method
