.class final Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/file/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser<",
        "Lcom/xiaomi/opensdk/file/sdk/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;[Ljava/lang/String;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult$1;->b(Ljava/util/Map;[Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/c;

    move-result-object p1

    return-object p1
.end method

.method public varargs b(Ljava/util/Map;[Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/opensdk/file/sdk/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    .line 16
    new-instance p2, Lcom/xiaomi/opensdk/file/sdk/c;

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/file/sdk/c;-><init>(Ljava/util/Map;)V

    return-object p2
.end method
