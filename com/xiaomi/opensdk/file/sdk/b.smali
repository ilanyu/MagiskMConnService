.class public Lcom/xiaomi/opensdk/file/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/xiaomi/opensdk/file/sdk/d;->b(Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/d;

    move-result-object p1

    return-object p1
.end method
