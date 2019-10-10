.class public Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Block"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->b:[Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->c:J

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->b:[Ljava/lang/String;

    return-object v0
.end method
