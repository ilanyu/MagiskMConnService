.class public Lcom/xiaomi/mistatistic/sdk/g;
.super Lcom/xiaomi/mistatistic/sdk/f;
.source "SourceFile"


# static fields
.field private static i:Lcom/xiaomi/mistatistic/sdk/g;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/f;-><init>()V

    return-void
.end method

.method public static declared-synchronized g()Lcom/xiaomi/mistatistic/sdk/g;
    .registers 2

    const-class v0, Lcom/xiaomi/mistatistic/sdk/g;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/g;->i:Lcom/xiaomi/mistatistic/sdk/g;

    if-nez v1, :cond_e

    .line 23
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/g;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/g;-><init>()V

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/g;->i:Lcom/xiaomi/mistatistic/sdk/g;

    .line 25
    :cond_e
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/g;->i:Lcom/xiaomi/mistatistic/sdk/g;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 33
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p1, "MI_STAT"

    const-string p2, "The statistics is disabled."

    .line 34
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_e
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public trackCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-static {p1, p2, p3, p4, v0}, Lcom/xiaomi/mistatistic/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public trackCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-static {p1, p2, v0}, Lcom/xiaomi/mistatistic/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    .line 50
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_2e

    .line 52
    :try_start_11
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_28} :catch_2b

    goto :goto_15

    :cond_29
    move-object v1, p3

    goto :goto_32

    :catch_2b
    move-exception v0

    move-object v1, p3

    goto :goto_2f

    :catch_2e
    move-exception v0

    .line 59
    :goto_2f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    :cond_32
    :goto_32
    invoke-static {p1, p2, v1}, Lcom/xiaomi/mistatistic/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/g;->b(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public trackStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 77
    invoke-static {p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
