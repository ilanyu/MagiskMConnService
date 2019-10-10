.class public Lcom/xiaomi/opensdk/file/sdk/d;
.super Lcn/kuaipan/android/kss/f;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;


# static fields
.field public static final W:Ljava/lang/String; = "result_map"

.field public static final X:Ljava/lang/String; = "kss_map"

.field public static final Y:Ljava/lang/String; = "requestId"

.field public static final Z:Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser<",
            "Lcom/xiaomi/opensdk/file/sdk/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/opensdk/file/sdk/d;->Z:Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcn/kuaipan/android/kss/f;-><init>(Ljava/util/Map;)V

    const-string v0, "requestId"

    .line 40
    invoke-static {p1, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/d;->aa:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/kuaipan/android/utils/i;->c(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_2e
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    .line 51
    :try_start_c
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/file/sdk/d;-><init>(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_27
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_22
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    if-eqz p0, :cond_1c

    .line 58
    instance-of v1, p0, Lcn/kuaipan/android/utils/e;

    if-eqz v1, :cond_1c

    .line 59
    check-cast p0, Lcn/kuaipan/android/utils/e;

    invoke-interface {p0}, Lcn/kuaipan/android/utils/e;->a()V

    :cond_1c
    return-object v0

    :catchall_1d
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_46

    :catch_22
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_2f

    :catch_27
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_3b

    :catchall_2c
    move-exception p0

    goto :goto_46

    :catch_2e
    move-exception p0

    .line 55
    :goto_2f
    :try_start_2f
    new-instance v1, Lcn/kuaipan/android/a/e;

    const v2, 0x7a509

    const-string v3, "kss is not json"

    invoke-direct {v1, v2, v3, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3a
    move-exception p0

    .line 53
    :goto_3b
    new-instance v1, Lcn/kuaipan/android/a/e;

    const v2, 0x7a50c

    const-string v3, "kss is null"

    invoke-direct {v1, v2, v3, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_2c

    :goto_46
    if-eqz v0, :cond_51

    .line 58
    instance-of v1, v0, Lcn/kuaipan/android/utils/e;

    if-eqz v1, :cond_51

    .line 59
    check-cast v0, Lcn/kuaipan/android/utils/e;

    invoke-interface {v0}, Lcn/kuaipan/android/utils/e;->a()V

    :cond_51
    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 67
    invoke-super {p0}, Lcn/kuaipan/android/kss/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    iget-object v3, p0, Lcom/xiaomi/opensdk/file/sdk/d;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_11} :catch_16

    .line 75
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_16
    move-exception v1

    .line 72
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method
