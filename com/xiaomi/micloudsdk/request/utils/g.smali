.class public Lcom/xiaomi/micloudsdk/request/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;[Ljava/lang/String;[I)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 10
    aget v1, p2, v0

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 11
    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;[Ljava/lang/String;[J)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 19
    aget-wide v1, p2, v0

    invoke-static {v1, v2}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(J)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 20
    aget-object v1, p1, v0

    aget-wide v2, p2, v0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;[Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 28
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 29
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-object p0
.end method
