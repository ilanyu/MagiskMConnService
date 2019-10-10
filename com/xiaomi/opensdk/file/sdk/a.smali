.class public Lcom/xiaomi/opensdk/file/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;


# static fields
.field public static final b:Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser<",
            "Lcom/xiaomi/opensdk/file/sdk/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/opensdk/file/sdk/a;->b:Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stat"

    .line 24
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/sdk/a;-><init>(Ljava/util/Map;)V

    return-void
.end method
