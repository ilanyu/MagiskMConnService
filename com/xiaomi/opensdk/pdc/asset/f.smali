.class public Lcom/xiaomi/opensdk/pdc/asset/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/b;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "assetInfo"

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 29
    new-instance v7, Lcom/xiaomi/opensdk/pdc/asset/b;

    const-string v1, "assetId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "size"

    .line 30
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "existed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/b;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v7
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "storage"

    .line 34
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 35
    new-instance v0, Lcom/xiaomi/opensdk/pdc/asset/g;

    const-string v1, "expireAt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "downloadUrl"

    .line 36
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/xiaomi/opensdk/pdc/asset/g;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;Ljava/lang/String;)[Lcom/xiaomi/opensdk/pdc/asset/b;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 14
    new-array v1, v0, [Lcom/xiaomi/opensdk/pdc/asset/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_34

    .line 17
    :try_start_a
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 18
    new-instance v11, Lcom/xiaomi/opensdk/pdc/asset/b;

    const-string v5, "assetId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "size"

    .line 19
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v5, "existed"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/xiaomi/opensdk/pdc/asset/b;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    aput-object v11, v1, v3
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_29} :catch_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 21
    :catch_2c
    new-instance p0, Lcom/xiaomi/opensdk/pdc/h;

    const-string p1, "AssetUtils parseJSONArrayToEntities() JSONException"

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    return-object v1
.end method
