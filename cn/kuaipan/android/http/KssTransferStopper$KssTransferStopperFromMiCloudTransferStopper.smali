.class public Lcn/kuaipan/android/http/KssTransferStopper$KssTransferStopperFromMiCloudTransferStopper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/http/KssTransferStopper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/KssTransferStopper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KssTransferStopperFromMiCloudTransferStopper"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/opensdk/file/a/e;


# direct methods
.method private constructor <init>(Lcom/xiaomi/opensdk/file/a/e;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/kuaipan/android/http/KssTransferStopper$KssTransferStopperFromMiCloudTransferStopper;->a:Lcom/xiaomi/opensdk/file/a/e;

    return-void
.end method

.method public static a(Lcom/xiaomi/opensdk/file/a/e;)Lcn/kuaipan/android/http/KssTransferStopper;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_4
    new-instance v0, Lcn/kuaipan/android/http/KssTransferStopper$KssTransferStopperFromMiCloudTransferStopper;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/http/KssTransferStopper$KssTransferStopperFromMiCloudTransferStopper;-><init>(Lcom/xiaomi/opensdk/file/a/e;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/kuaipan/android/http/KssTransferStopper$KssTransferStopperFromMiCloudTransferStopper;->a:Lcom/xiaomi/opensdk/file/a/e;

    invoke-interface {v0}, Lcom/xiaomi/opensdk/file/a/e;->a()Z

    move-result v0

    return v0
.end method
